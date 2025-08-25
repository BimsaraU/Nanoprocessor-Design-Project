library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BitwiseOperator is
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           Type_Sel : in STD_LOGIC_VECTOR (1 downto 0);
           O : out STD_LOGIC_VECTOR (7 downto 0));
end BitwiseOperator;

architecture Behavioral of BitwiseOperator is

Signal Tmp_O : STD_LOGIC_VECTOR (7 downto 0);

begin

BitWise : Process (A, B, Type_Sel)
begin
case Type_Sel is
    when "00" => Tmp_O <= A AND B;
    when "01" => Tmp_O <= A OR B;
    when "10" => Tmp_O <= A XOR B;
    when "11" => Tmp_O <= NOT A;
    when Others => Tmp_O <= (others => '0');
end case;

end process;
O <= Tmp_O;

end Behavioral;
