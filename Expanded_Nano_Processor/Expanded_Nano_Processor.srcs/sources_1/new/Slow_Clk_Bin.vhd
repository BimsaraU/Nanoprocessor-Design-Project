library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Slow_Clk_Bin is
    Generic( N  : INTEGER := 26);
    Port (
        Clk_in  : in  STD_LOGIC;
        Clk_out : out STD_LOGIC
    );
end Slow_Clk_Bin;

architecture Behavioral of Slow_Clk_Bin is

    component c_counter_binary_0 is
        port (
            CLK     : in  STD_LOGIC;
            Q       : out STD_LOGIC_VECTOR(26 downto 0)
        );
    end component;

    signal Q : STD_LOGIC_VECTOR(26 downto 0):= (others => '0');

begin

    Counter : c_counter_binary_0
        port map (
            CLK => Clk_in,
            Q   => Q
        );

   
    Clk_out <= Q(N);

end Behavioral;
