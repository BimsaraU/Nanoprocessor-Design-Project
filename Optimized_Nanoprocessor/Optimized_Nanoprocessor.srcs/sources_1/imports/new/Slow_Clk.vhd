library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Slow_Clk is
    generic (
        N : INTEGER := 50000000  
    );
    Port (
        Clk_in  : in  STD_LOGIC;
        Clk_out : out STD_LOGIC
    );
end Slow_Clk;

architecture Behavioral of Slow_Clk is

    signal count      : INTEGER := 1;
    signal Clk_status : STD_LOGIC := '0';

begin
    process(Clk_in)
    begin
        if rising_edge(Clk_in) then
            if count = N then
                Clk_status <= not Clk_status;
                count <= 1;
            else
                count <= count + 1;
            end if;
        end if;
    end process;

    Clk_out <= Clk_status;

end Behavioral;
