library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OneFlag is
    Port (
        Sum  : in  STD_LOGIC_VECTOR(3 downto 0);
        Zero : out STD_LOGIC
    );
end OneFlag;

architecture Behavioral of OneFlag is

    signal co     : STD_LOGIC_VECTOR(3 downto 0);
    signal dummyO : STD_LOGIC_VECTOR(3 downto 0);

    component CARRY4
        port (
            CO     : out STD_LOGIC_VECTOR(3 downto 0);
            O      : out STD_LOGIC_VECTOR(3 downto 0);
            CI     : in  STD_LOGIC;
            CYINIT : in  STD_LOGIC;
            DI     : in  STD_LOGIC_VECTOR(3 downto 0);
            S      : in  STD_LOGIC_VECTOR(3 downto 0)
        );
    end component;

begin


    carry_zero_inst : CARRY4
        port map (
            CO     => co,
            O      => dummyO,
            CI     => '0',
            CYINIT => '1',
            DI     => (others => '0'),
            S      => Sum
        );


    Zero <= co(3);

end Behavioral;
