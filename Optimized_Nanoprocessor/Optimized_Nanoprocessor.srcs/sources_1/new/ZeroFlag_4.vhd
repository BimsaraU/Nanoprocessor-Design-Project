library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ZeroFlag_4 is
    Port ( Val : in STD_LOGIC_VECTOR (3 downto 0);
           Zero : out STD_LOGIC;
           En : in STD_LOGIC);
end ZeroFlag_4;

architecture Behavioral of ZeroFlag_4 is

component NOT_GATE is
    Port (A1 : in STD_LOGIC;
          A2 : in STD_LOGIC;
          A1bar : out STD_LOGIC;
          A2bar : out STD_LOGIC);
end component;

component OneFlag is
    port (
        Sum  : in  STD_LOGIC_VECTOR(3 downto 0);
        Zero : out STD_LOGIC
    );
end component;

    signal Not_Sum       : STD_LOGIC_VECTOR (3 downto 0);

begin

N0 : NOT_GATE
  port map (
         A1    => Val(0),
         A2    => Val(1),
         A1bar => Not_Sum(0),
         A2bar => Not_Sum(1)
     );
     
N1 : NOT_GATE
   port map (
          A1    => Val(2),
          A2    => Val(3),
          A1bar => Not_Sum(2),
          A2bar  => Not_Sum(3)
         );
         



ZF : OneFlag
    port map (
        Sum  => Not_Sum,
        Zero => Zero
    );


end Behavioral;
