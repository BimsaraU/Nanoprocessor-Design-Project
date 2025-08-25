library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AU is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Sub : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0);
           Overflow : out STD_LOGIC;
           Zero : out STD_LOGIC);
end AU;

architecture Behavioral of AU is
Component RCA_4 is
    Port (     A : in STD_LOGIC_VECTOR (3 downto 0);
               B : in STD_LOGIC_VECTOR (3 downto 0);
            C_in : in STD_LOGIC;
               S : out STD_LOGIC_VECTOR (3 downto 0);
           C_out : out STD_LOGIC);
end Component;

Signal Tmp_B : STD_LOGIC_VECTOR (3 downto 0);
Signal Sum : STD_LOGIC_VECTOR (3 downto 0);

begin
RCA : RCA_4
port map(
A => A,
B => Tmp_B,
C_in => Sub,
S => Sum,
C_out => Overflow
);

Tmp_B <= B XOR (Sub & Sub & Sub & Sub);
S <= Sum;

Zero <= '1' when Sum = "0000" else '0';


end Behavioral;
