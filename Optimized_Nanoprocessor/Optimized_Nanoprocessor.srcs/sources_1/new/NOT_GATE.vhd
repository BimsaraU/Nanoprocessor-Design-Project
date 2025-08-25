library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity NOT_GATE is
    Port ( A1 : in STD_LOGIC;
           A2 : in STD_LOGIC;
           A1bar : out STD_LOGIC;
           A2bar : out STD_LOGIC);
end NOT_GATE;

architecture Behavioral of NOT_GATE is

Signal Dummy_Co, O : STD_LOGIC_VECTOR (3 downto 0);
Signal TMP : STD_LOGIC_VECTOR (3 downto 0) := (others=>'0');

begin
TMP(0)<= A1;
TMP(2)<= A2;
carry_zero_inst : CARRY4
    port map (
        CO     => Dummy_Co,
        O      => O,
        CI     => '0',
        CYINIT => '1',
        DI     => "0010",
        S      => TMP
    );
    
A1bar <= O(0);
A2bar <= O(2);

end Behavioral;
