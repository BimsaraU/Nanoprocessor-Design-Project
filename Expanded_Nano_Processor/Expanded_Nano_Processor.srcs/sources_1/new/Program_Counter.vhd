library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Program_Counter is
  Port (       Clk : IN STD_LOGIC;
             Reset : IN STD_LOGIC;
           Jump_En : IN STD_LOGIC;
      Jump_Address : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
               Q : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
      );
end Program_Counter;

architecture Behavioral of Program_Counter is

Component c_counter_binary_1 IS
  PORT (
    CLK : IN STD_LOGIC;
    SCLR : IN STD_LOGIC;
    LOAD : IN STD_LOGIC;
    L : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    Q : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
  );
END Component;

begin

Counter : c_counter_binary_1
  PORT MAP (
     CLK => Clk,
    SCLR => Reset,
    LOAD => Jump_En,
       L => Jump_Address,
       Q => Q
  );



end Behavioral;
