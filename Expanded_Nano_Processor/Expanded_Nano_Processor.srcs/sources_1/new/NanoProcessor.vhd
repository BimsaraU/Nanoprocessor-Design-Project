library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NanoProcessor is
    Port ( Reset    : in STD_LOGIC;
           Clk      : in STD_LOGIC;
           Overflow : out std_logic;
           Zero     : out std_logic; 
          
           R0 : out STD_LOGIC_VECTOR (7 downto 0);
           R1 : out STD_LOGIC_VECTOR (7 downto 0);
           R2 : out STD_LOGIC_VECTOR (7 downto 0);
           R3 : out STD_LOGIC_VECTOR (7 downto 0);
           R4 : out STD_LOGIC_VECTOR (7 downto 0);
           R5 : out STD_LOGIC_VECTOR (7 downto 0);
           R6 : out STD_LOGIC_VECTOR (7 downto 0);           
           R7 : out STD_LOGIC_VECTOR (7 downto 0);
           
           PC_Out : out STD_LOGIC_VECTOR (2 downto 0);
           Program : in STD_LOGIC_VECTOR (1 downto 0)
           );
end NanoProcessor;

architecture Behavioral of NanoProcessor is

Component Instruction_Decoder is
    Port (
    Instruction   : in  STD_LOGIC_VECTOR(16 downto 0);
    JumpCheck     : in  STD_LOGIC_VECTOR(7 downto 0);
    RegEn         : out STD_LOGIC_VECTOR(2 downto 0);
    Sel_A         : out STD_LOGIC_VECTOR(2 downto 0);
    Sel_B         : out STD_LOGIC_VECTOR(2 downto 0);
    LoadSel       : out STD_LOGIC;
    ImmVal        : out STD_LOGIC_VECTOR(7 downto 0);
    Sub           : out STD_LOGIC;
    JumpFlag      : out STD_LOGIC;
    JumpAddress   : out STD_LOGIC_VECTOR(2 downto 0);
    
             Mode : out STD_LOGIC_VECTOR (2 downto 0);
                T : out STD_LOGIC_VECTOR (1 downto 0)
    );
end Component;

Component MUX8 is
    Port (
        Sel  : in  STD_LOGIC_VECTOR(2 downto 0);                    
        I0    : in  STD_LOGIC_VECTOR(7 downto 0);   
        I1    : in  STD_LOGIC_VECTOR(7 downto 0);   
        I2    : in  STD_LOGIC_VECTOR(7 downto 0);  
        I3    : in  STD_LOGIC_VECTOR(7 downto 0);  
        I4    : in  STD_LOGIC_VECTOR(7 downto 0); 
        I5    : in  STD_LOGIC_VECTOR(7 downto 0);  
        I6    : in  STD_LOGIC_VECTOR(7 downto 0);  
        I7    : in  STD_LOGIC_VECTOR(7 downto 0);  
        O     : out STD_LOGIC_VECTOR(7 downto 0) 
    );
end Component;
    
Component Load_Selector is
        Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
               B : in STD_LOGIC_VECTOR (7 downto 0);
               Sel : in STD_LOGIC;
               O : out STD_LOGIC_VECTOR (7 downto 0));
 end Component;

Component Program_Counter is
  Port (       Clk : IN STD_LOGIC;
             Reset : IN STD_LOGIC;
           Jump_En : IN STD_LOGIC;
      Jump_Address : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
               Q : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
      );
end Component;


Component Program_ROM is
    port(ROM_address : in STD_LOGIC_VECTOR (2 downto 0);
                    I: out STD_LOGIC_VECTOR (16 downto 0);
             Program : in STD_LOGIC_VECTOR (1 downto 0)
         ); 
end Component;

Component AU is
    Port ( Mode : in STD_LOGIC_VECTOR (2 downto 0);
           T : in STD_LOGIC_VECTOR (1 downto 0);
           
           A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           Sub : in STD_LOGIC;
          
           S : out STD_LOGIC_VECTOR (7 downto 0);
           Overflow : out STD_LOGIC;
           Zero : out STD_LOGIC);
end Component;

Component Register_Bank is
PORT (
    RegEn   : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
    Data    : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
    Clk     : IN  STD_LOGIC;
    Res     : IN  STD_LOGIC;
    Reg0    : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    Reg1    : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    Reg2    : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    Reg3    : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    Reg4    : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    Reg5    : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    Reg6    : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    Reg7    : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
);
END Component;

-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------

    signal Next_Address     : STD_LOGIC_VECTOR(2 DOWNTO 0);
    signal Current_Address  : STD_LOGIC_VECTOR(2 DOWNTO 0);
    signal Selected_Address : STD_LOGIC_VECTOR(2 DOWNTO 0); 
    signal Jump_Address     : STD_LOGIC_VECTOR(2 DOWNTO 0); 
    signal Jump_Flag        : std_logic; 
    signal Instruction      : STD_LOGIC_VECTOR(16 DOWNTO 0);
    
    signal  Mode : STD_LOGIC_VECTOR (2 downto 0);
    signal   T : STD_LOGIC_VECTOR (1 downto 0);
    
    signal t0, t1, t2, t3, t4, t5, t6, t7 : STD_LOGIC_VECTOR(7 DOWNTO 0);
    
    signal Load_Selection   : std_logic; 
    signal Immediate_Value  : STD_LOGIC_VECTOR(7 DOWNTO 0);
    signal ASelect          : STD_LOGIC_VECTOR(2 DOWNTO 0); 
    signal BSelect          : STD_LOGIC_VECTOR(2 DOWNTO 0); 
    signal AData            : STD_LOGIC_VECTOR(7 DOWNTO 0); 
    signal BData            : STD_LOGIC_VECTOR(7 DOWNTO 0); 
    signal Operation_Result : STD_LOGIC_VECTOR(7 DOWNTO 0);
    signal Sub_Sel          : std_logic; 
    signal Register_Enable  : STD_LOGIC_VECTOR(2 DOWNTO 0); 
    signal Selected_Load    : STD_LOGIC_VECTOR(7 DOWNTO 0); 
    
-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
    
    
begin


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
        JumpAddress  => Jump_Address,
        Mode         => Mode,
        T            => T
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
        Res     => Reset,
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
      
Arithmetic_Unit : AU
     Port Map( 
            Mode => Mode,
              T  => T,
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
                    I => Instruction,
              Program => Program
      );
      
R0  <= t0;
R1  <= t1;
R2  <= t2;
R3  <= t3;
R4  <= t4;
R5  <= t5;
R6  <= t6;
R7  <= t7; 
PC_Out <= Current_Address;

      
end Behavioral;
