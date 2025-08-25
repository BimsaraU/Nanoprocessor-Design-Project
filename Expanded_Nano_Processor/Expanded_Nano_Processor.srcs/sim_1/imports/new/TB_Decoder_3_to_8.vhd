library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_Decoder_3_to_8 is
end TB_Decoder_3_to_8;

architecture Behavioral of TB_Decoder_3_to_8 is
COMPONENT Decoder_8
 port(  Sel: in STD_LOGIC_VECTOR;
        O: out STD_LOGIC_VECTOR );
END COMPONENT;

SIGNAL I: STD_LOGIC_VECTOR (2 downto 0);
SIGNAL Y: STD_LOGIC_VECTOR (7 downto 0) ;

begin

UUT: Decoder_8 
PORT MAP(
     Sel => I,
     O => Y );

process
begin

 I(2) <= '1'; I(1) <= '0'; I(0) <= '1';
 WAIT FOR 100 ns;
 
 I(2) <= '1'; I(1) <= '1'; I(0) <= '1';
 WAIT FOR 100 ns;
 
 I(2) <= '0'; I(1) <= '1'; I(0) <= '1';
 WAIT FOR 100 ns;
 
 I(2) <= '0'; I(1) <= '1'; I(0) <= '0';
 WAIT FOR 100 ns;
 
 I(2) <= '0'; I(1) <= '0'; I(0) <= '0';
 WAIT;

end process;

end Behavioral;
