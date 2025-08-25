library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NanoProcessor is
    Port ( Reset    : in STD_LOGIC;
           Clk      : in STD_LOGIC;
           Overflow : out std_logic;
           Zero     : out std_logic; 
          
           R7 : out STD_LOGIC_VECTOR (3 downto 0)
           );
end NanoProcessor;

architecture Behavioral of NanoProcessor is

Component Instruction_Decoder is
    Port (
        Instruction   : in  STD_LOGIC_VECTOR(11 downto 0);
        JumpCheck     : in  STD_LOGIC_VECTOR(3 downto 0);
        RegEn         : out STD_LOGIC_VECTOR(2 downto 0);
        Sel_A         : out STD_LOGIC_VECTOR(2 downto 0);
        Sel_B         : out STD_LOGIC_VECTOR(2 downto 0);
        LoadSel       : out STD_LOGIC;
        ImmVal        : out STD_LOGIC_VECTOR(3 downto 0);
        Sub           : out STD_LOGIC;
        JumpFlag      : out STD_LOGIC;
        JumpAddress   : out STD_LOGIC_VECTOR(2 downto 0)
    );
end Component;

Component MUX8 is
    Port (
        Sel  : in  STD_LOGIC_VECTOR(2 downto 0);                    
        I0    : in  STD_LOGIC_VECTOR(3 downto 0);   
        I1    : in  STD_LOGIC_VECTOR(3 downto 0);   
        I2    : in  STD_LOGIC_VECTOR(3 downto 0);  
        I3    : in  STD_LOGIC_VECTOR(3 downto 0);  
        I4    : in  STD_LOGIC_VECTOR(3 downto 0); 
        I5    : in  STD_LOGIC_VECTOR(3 downto 0);  
        I6    : in  STD_LOGIC_VECTOR(3 downto 0);  
        I7    : in  STD_LOGIC_VECTOR(3 downto 0);  
        O     : out STD_LOGIC_VECTOR(3 downto 0) 
    );
end Component;
    
--Component MUX2 is
--        port(
--            Sel : in std_logic;                                
--            A : in std_logic_vector(2 downto 0);             
--            B : in std_logic_vector(2 downto 0);             
--            O : out std_logic_vector(2 downto 0)             
--        );
-- end Component;entity Program_Counter is
Component Program_Counter is
  Port (       Clk : IN STD_LOGIC;
             Reset : IN STD_LOGIC;
           Jump_En : IN STD_LOGIC;
      Jump_Address : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
               Q : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
      );
end Component;
 
Component Load_Selector is
        Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
               B : in STD_LOGIC_VECTOR (3 downto 0);
               Sel : in STD_LOGIC;
               O : out STD_LOGIC_VECTOR (3 downto 0));
 end Component;

Component PC_Inc_Behav is
    Port ( Q : in STD_LOGIC_VECTOR (2 downto 0);
           Jump_Ad : in  STD_LOGIC_VECTOR (2 downto 0);
           Jump_En : in STD_LOGIC;
           D : out STD_LOGIC_VECTOR (2 downto 0));
end Component;

Component Program_ROM is
    port(ROM_address : in STD_LOGIC_VECTOR (2 downto 0);
                    I: out STD_LOGIC_VECTOR (11 downto 0)
         ); 
end Component;

Component Register_PC is
   Port ( 
            Clk     : in STD_LOGIC;                      
            Res     : in STD_LOGIC;                     
            D       : in STD_LOGIC_VECTOR(2 downto 0);   
            Q       : out STD_LOGIC_VECTOR(2 downto 0)   
         );
end Component;

Component AU is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Sub : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0);
           Overflow : out STD_LOGIC;
           Zero : out STD_LOGIC);
end Component;

Component RegisterBank_8x4_RAM is
    Port (
        Clk     : in  STD_LOGIC;
        Res     : in  STD_LOGIC;
        WE      : in  STD_LOGIC;                         -- Write Enable
        WAddr   : in  STD_LOGIC_VECTOR(2 downto 0);      -- Write Address
        WData   : in  STD_LOGIC_VECTOR(3 downto 0);      -- Data to write
        RAddr1  : in  STD_LOGIC_VECTOR(2 downto 0);      -- Read Address 1
        RAddr2  : in  STD_LOGIC_VECTOR(2 downto 0);      -- Read Address 2
        RData1  : out STD_LOGIC_VECTOR(3 downto 0);      -- Read Data 1
        RData2  : out STD_LOGIC_VECTOR(3 downto 0)       -- Read Data 2
    );
end Component;


Component Register_Bank is
PORT (
    RegEn   : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
    Data    : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
    Clk     : IN  STD_LOGIC;
    Reset   : in STD_LOGIC; 
    Reg0    : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    Reg1    : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    Reg2    : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    Reg3    : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    Reg4    : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    Reg5    : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    Reg6    : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    Reg7    : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
);
END Component;

-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------

--    signal Next_Address     : STD_LOGIC_VECTOR(2 DOWNTO 0);
    signal Current_Address  : STD_LOGIC_VECTOR(2 DOWNTO 0);
    signal Selected_Address : STD_LOGIC_VECTOR(2 DOWNTO 0); 
    signal Jump_Address     : STD_LOGIC_VECTOR(2 DOWNTO 0); 
    signal Jump_Flag        : std_logic; 
    signal Instruction      : STD_LOGIC_VECTOR(11 DOWNTO 0); 
    
    signal t0, t1, t2, t3, t4, t5, t6, t7 : STD_LOGIC_VECTOR(3 DOWNTO 0);
    
    signal Load_Selection   : std_logic; 
    signal Immediate_Value  : STD_LOGIC_VECTOR(3 DOWNTO 0);
    signal ASelect          : STD_LOGIC_VECTOR(2 DOWNTO 0); 
    signal BSelect          : STD_LOGIC_VECTOR(2 DOWNTO 0); 
    signal AData            : STD_LOGIC_VECTOR(3 DOWNTO 0); 
    signal BData            : STD_LOGIC_VECTOR(3 DOWNTO 0); 
    signal Operation_Result : STD_LOGIC_VECTOR(3 DOWNTO 0);
    signal Sub_Sel          : std_logic; 
    signal Register_Enable  : STD_LOGIC_VECTOR(2 DOWNTO 0); 
    signal Selected_Load    : STD_LOGIC_VECTOR(3 DOWNTO 0); 
    
-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
    
    
begin

--Program_Counter : Register_PC
--Port Map ( 
--    Clk => Clk,                    
--    Res => Reset,                                          
--      D => Selected_Address, 
--      Q => Current_Address   
--);

--Incrementer : PC_Inc_Behav
-- Port Map ( 
--    Q => Current_Address,
--    Jump_Ad => Jump_Address, 
--    Jump_En => Jump_Flag,
--    D => Selected_Address
--);



--Next_Address_Selector : MUX2
--Port Map ( 
--    Sel => Jump_Flag,                       
--      A => Next_Address,          
--      B => Jump_Address,     
--      O => Selected_Address   
--);

PC : Program_Counter 
  Port Map (       Clk => Clk,
                 Reset => Reset,
               Jump_En => Jump_Flag,
          Jump_Address => Jump_Address,
                     Q => Current_Address
      );




InstructionDecoder : Instruction_Decoder
    Port Map (
        Instruction  => Instruction,
        JumpCheck    => AData,
        RegEn        => Register_Enable,
        Sel_A        => ASelect,
        Sel_B        => BSelect,
        LoadSel      => Load_Selection,
        ImmVal       => Immediate_Value,
        Sub          => Sub_Sel,
        JumpFlag     => Jump_Flag,
        JumpAddress  => Jump_Address
    );
    
LoadSelector : Load_Selector 
     Port Map ( 
       A   =>  Operation_Result,
       B   =>  Immediate_Value,
       Sel =>  Load_Selection,
       O   =>  Selected_Load
     );
                   
                   
RegisterBank : Register_Bank 
    Port Map (
        RegEn   => Register_Enable,
        Data    => Selected_Load,
        Clk     => Clk,
        Reset   => Reset,
        Reg0    => t0,
        Reg1    => t1,
        Reg2    => t2,
        Reg3    => t3,
        Reg4    => t4,
        Reg5    => t5,
        Reg6    => t6,
        Reg7    => t7
    );
    
 Selector_A : MUX8
      Port Map (
        Sel   => ASelect,                   
        I0    => t0,
        I1    => t1,  
        I2    => t2,
        I3    => t3,
        I4    => t4,
        I5    => t5, 
        I6    => t6,
        I7    => t7,
        O     => AData
      );

 Selector_B : MUX8
      Port Map (
        Sel   => BSelect,                   
        I0    => t0,
        I1    => t1,  
        I2    => t2,
        I3    => t3,
        I4    => t4,
        I5    => t5, 
        I6    => t6,
        I7    => t7,
        O     => BData
      );
--RB : RegisterBank_8x4_RAM
--    Port Map (
--        Clk     => Clk,
--        Res     => Reset,
--        WE      => '1',                         -- Write Enable
--        WAddr   => Register_Enable,             -- Write Address
--        WData   => Selected_Load,                 -- Data to write
--        RAddr1  => ASelect,                      -- Read Address 1
--        RAddr2  => BSelect,           -- Read Address 2
--        RData1  => AData,-- Read Data 1
--        RData2  => BData     -- Read Data 2
--    );


Arithmetic_Unit : AU
     Port Map( 
              A  => AData,
              B  => BData,
            Sub  => Sub_Sel,
              S  => Operation_Result,
       Overflow  => Overflow,
           Zero  => Zero
       );

       
ProgramROM : Program_ROM
    Port Map(
          ROM_address => Current_Address,
                    I => Instruction
      );
 
R7  <= t7;
      
end Behavioral;
