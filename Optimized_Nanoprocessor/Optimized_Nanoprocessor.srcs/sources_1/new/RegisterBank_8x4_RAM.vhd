library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RegisterBank_8x4_RAM is
    Port (
        Clk     : in  STD_LOGIC;
        Res     : in  STD_LOGIC;
        WE      : in  STD_LOGIC;                         -- Write Enable
        WAddr   : in  STD_LOGIC_VECTOR(2 downto 0);      -- Write Address
        WData   : in  STD_LOGIC_VECTOR(3 downto 0);      -- Data to write
        RAddr1  : in  STD_LOGIC_VECTOR(2 downto 0);      -- Read Address 1
        RAddr2  : in  STD_LOGIC_VECTOR(2 downto 0);      -- Read Address 2
        RData1  : out STD_LOGIC_VECTOR(3 downto 0);      -- Read Data 1
        RData2  : out STD_LOGIC_VECTOR(3 downto 0)       -- Read Data 2
    );
end RegisterBank_8x4_RAM;

architecture Behavioral of RegisterBank_8x4_RAM is

    -- Distributed RAM: 8 locations of 4 bits each
    type reg_array is array(0 to 7) of STD_LOGIC_VECTOR(3 downto 0);
    signal mem : reg_array := (others => (others => '0'));

    attribute ram_style : string;
    attribute ram_style of mem : signal is "distributed";

begin

    -- Synchronous Write
    process(Clk)
    begin
        if rising_edge(Clk) then
            if Res = '1' then
                mem <= (others => (others => '0'));
            elsif WE = '1' then
                mem(to_integer(unsigned(WAddr))) <= WData;
            end if;
        end if;
    end process;

    -- Asynchronous Read
    RData1 <= mem(to_integer(unsigned(RAddr1)));
    RData2 <= mem(to_integer(unsigned(RAddr2)));

end Behavioral;
