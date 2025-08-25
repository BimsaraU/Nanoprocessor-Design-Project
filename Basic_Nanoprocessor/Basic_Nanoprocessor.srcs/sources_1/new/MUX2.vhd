library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX2 is
    Port (
        Sel : in  std_logic;
        A   : in  std_logic_vector(2 downto 0);
        B   : in  std_logic_vector(2 downto 0);
        O   : out std_logic_vector(2 downto 0)
    );
end MUX2;

architecture Behavioral of MUX2 is
begin
    process(Sel, A, B)
    begin
        if Sel = '0' then
            O <= A;
        else
            O <= B;
        end if;
    end process;
end Behavioral;
