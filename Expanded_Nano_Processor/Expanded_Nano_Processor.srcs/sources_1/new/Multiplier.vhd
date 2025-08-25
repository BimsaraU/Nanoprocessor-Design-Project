

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Multiplier is
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           S : out STD_LOGIC_VECTOR (7 downto 0));
end Multiplier;

architecture Behavioral of Multiplier is

attribute use_dsp : string;
attribute use_dsp of Behavioral : architecture is "yes";

signal Product : unsigned (15 downto 0);


begin

Product <= unsigned(A)*unsigned(B);
S <= Std_logic_vector(Product(7 downto 0));
end Behavioral;
