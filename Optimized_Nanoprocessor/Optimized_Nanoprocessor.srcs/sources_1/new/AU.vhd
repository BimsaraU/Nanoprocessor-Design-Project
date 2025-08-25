library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity AU is
    Port (
        A        : in  STD_LOGIC_VECTOR (3 downto 0);
        B        : in  STD_LOGIC_VECTOR (3 downto 0);
        Sub      : in  STD_LOGIC;
        S        : out STD_LOGIC_VECTOR (3 downto 0);
        Overflow : out STD_LOGIC;
        Zero     : out STD_LOGIC
    );
end AU;

architecture Behavioral of AU is

    component c_addsub_0 is
        port (
            A   : in  STD_LOGIC_VECTOR(4 downto 0);
            B   : in  STD_LOGIC_VECTOR(4 downto 0);
            ADD : in  STD_LOGIC;
            S   : out STD_LOGIC_VECTOR(4 downto 0)
        );
    end component;
    
component ZeroFlag_4 is
    Port ( Val : in STD_LOGIC_VECTOR (3 downto 0);
           Zero : out STD_LOGIC;
           En  : in STD_LOGIC);       
end component;


    signal Sum           : STD_LOGIC_VECTOR (4 downto 0);
    signal Add           : STD_LOGIC;
    signal A5, B5        : STD_LOGIC_VECTOR (4 downto 0);

begin

A5(3 downto 0) <= A;
A5(4)          <= '0';
B5(3 downto 0) <= B;
B5(4)          <= '0';

--Add <= not Sub;

addsub_inst : c_addsub_0
    port map (
        A   => A5,
        B   => B5,
        ADD => Sub,
        S   => Sum
    );
    
ZF : ZeroFlag_4
    port map (
        Val  => Sum(3 downto 0),
        Zero => Zero,
        En => '1'
    );

    S        <= Sum(3 downto 0);
    Overflow <= Sum(4);
end Behavioral;
