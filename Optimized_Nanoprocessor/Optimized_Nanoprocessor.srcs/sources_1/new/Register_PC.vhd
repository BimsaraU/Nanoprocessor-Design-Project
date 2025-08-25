library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Register_PC is
    Port ( 
        Clk  : in  STD_LOGIC;                      -- Clock input
        Res  : in  STD_LOGIC;                      -- Reset input (active high)
        D    : in  STD_LOGIC_VECTOR(2 downto 0);   -- 3-bit data input
        Q    : out STD_LOGIC_VECTOR(2 downto 0)    -- 3-bit data output
    );
end Register_PC;

architecture Behavioral of Register_PC is
    signal reg_dat : STD_LOGIC_VECTOR(2 downto 0) := (others => '0');
begin

    process(Clk, Res)
    begin
        if Res = '1' then
            reg_dat <= (others => '0');
        elsif rising_edge(Clk) then
            reg_dat <= D;
        end if;
    end process;

    Q <= reg_dat;

end Behavioral;
