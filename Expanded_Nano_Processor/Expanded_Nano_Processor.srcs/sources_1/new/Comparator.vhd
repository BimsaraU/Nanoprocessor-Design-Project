library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Comparator is
    Port (
        A : in  STD_LOGIC_VECTOR (7 downto 0);
        B : in  STD_LOGIC_VECTOR (7 downto 0);
        G : out STD_LOGIC_VECTOR (7 downto 0);  
        L : out STD_LOGIC_VECTOR (7 downto 0)   
            );
end Comparator;

architecture Behavioral of Comparator is
begin
    process (A, B)
        variable A_u : UNSIGNED(7 downto 0);
        variable B_u : UNSIGNED(7 downto 0);
    begin
        A_u := UNSIGNED(A);
        B_u := UNSIGNED(B);

        if A_u > B_u then
            G <= A;
            L <= B;
        else
            G <= B;
            L <= A;
        end if;
    end process;
end Behavioral;
