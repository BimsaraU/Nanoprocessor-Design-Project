library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Computer is
    Port ( Clk : in STD_LOGIC;
           Step_Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Type_Sel : in STD_LOGIC;
           Step_Mode: in STD_LOGIC; 
           Display_Mode: in STD_LOGIC; 
           
           Reg_Sel : in STD_LOGIC_VECTOR (2 downto 0);
           Seg7   : out STD_LOGIC_VECTOR (6 downto 0);
           data :  out STD_LOGIC_VECTOR (7 downto 0);
           
           Zero :  out STD_LOGIC;
           Overflow :  out STD_LOGIC;
           Anode :  out STD_LOGIC_VECTOR (3 downto 0);
           Program : in STD_LOGIC_VECTOR (1 downto 0)
           );
end Computer;

architecture Behavioral of Computer is

Component Slow_Clk_Bin is

    Generic( N  : INTEGER := 26);  
   
    Port (
        Clk_in  : in  STD_LOGIC;
        Clk_out : out STD_LOGIC
    );
end Component;

Component Display_Driver is
    Port ( 
               Clk : in STD_LOGIC;
               Type_Sel : in STD_LOGIC;
               R0, R1, R2, R3, R4, R5, R6, R7 : in STD_LOGIC_VECTOR (7 downto 0);
               Reg_Sel : in STD_LOGIC_VECTOR (2 downto 0);
               PC_in : in STD_LOGIC_VECTOR (2 downto 0);
               driver_signal : out STD_LOGIC_VECTOR (6 downto 0);
               data  : out STD_LOGIC_VECTOR (7 downto 0);
               Anode :  out STD_LOGIC_VECTOR (3 downto 0)
     );
end Component;

Component Display_Driver_Nat is
    Port ( 
               Clk : in STD_LOGIC;
               Type_Sel : in STD_LOGIC;
               R0, R1, R2, R3, R4, R5, R6, R7 : in STD_LOGIC_VECTOR (7 downto 0);
               Reg_Sel : in STD_LOGIC_VECTOR (2 downto 0);
               driver_signal : out STD_LOGIC_VECTOR (6 downto 0);
               Anode :  out STD_LOGIC_VECTOR (3 downto 0)
     );
end Component;


Component NanoProcessor is
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
end Component;

Signal  R0, R1, R2, R3, R4, R5, R6, R7 : STD_LOGIC_VECTOR (7 downto 0);
Signal  PC :  STD_LOGIC_VECTOR (2 downto 0);
Signal  SC : STD_LOGIC;
Signal  UC : STD_LOGIC;
Signal  ds1, ds2 : STD_LOGIC_VECTOR (6 downto 0);
Signal  an1, an2 : STD_LOGIC_VECTOR (3 downto 0);


begin

 SlowClk : Slow_Clk_Bin
        generic map(               
                N => 25  )
        port map(
            Clk_in  => Clk,
            Clk_out => SC
        );
 
UC <= Step_Clk when Step_Mode = '1' else SC;  

NP1 :  NanoProcessor 
    Port Map(
          Reset    => Reset,
          Clk      => UC,
          Overflow => Overflow,
          Zero     => Zero,
          R0       => R0,
          R1       => R1,
          R2       => R2,
          R3       => R3,
          R4       => R4,
          R5       => R5,
          R6       => R6,         
          R7       => R7,
          PC_Out   => PC,
          Program  => Program
      );
      
Driver1 :  Display_Driver
          Port Map(
                Clk => Clk,
                
                  R0       => R0,
                  R1       => R1,
                  R2       => R2,
                  R3       => R3,
                  R4       => R4,
                  R5       => R5,
                  R6       => R6,         
                  R7       => R7,
                  
                Reg_Sel  => Reg_Sel,
                Type_Sel => Type_Sel,
                PC_in    =>   PC,
                driver_signal  => ds1,
                data       => data,
                Anode => an1
            );
            
 Driver2 :  Display_Driver_Nat
          Port Map(
              Clk => Clk,
                            
              R0       => R0,
              R1       => R1,
              R2       => R2,
              R3       => R3,
              R4       => R4,
              R5       => R5,
              R6       => R6,         
              R7       => R7,
                              
              Reg_Sel  => Reg_Sel,
              Type_Sel => Type_Sel,
         driver_signal => ds2,
                 Anode => an2
         );
  
  Display : process(Display_Mode)
  begin
   case Display_Mode is
      when '0' =>
        Seg7 <= ds1;
        Anode <= an1;
      when '1' =>
       Seg7 <= ds2;
       Anode <= an1;
     end case;
  end process;
                   
            

end Behavioral;
