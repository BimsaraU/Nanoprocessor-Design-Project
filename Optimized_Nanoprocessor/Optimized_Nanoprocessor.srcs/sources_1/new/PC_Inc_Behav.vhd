library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PC_Inc_Behav is
    Port ( 
        Q       : in  STD_LOGIC_VECTOR (2 downto 0);
        Jump_Ad : in  STD_LOGIC_VECTOR (2 downto 0);
        Jump_En : in  STD_LOGIC;
        D       : out STD_LOGIC_VECTOR (2 downto 0)
    );
end PC_Inc_Behav;

architecture Behavioral of PC_Inc_Behav is
begin
    process(Q, Jump_Ad)
    variable PC : unsigned(2 downto 0);
    begin
        if Jump_En = '0' then
             PC := unsigned(Q) + 1;
             D <= std_logic_vector(PC);
        else
            D <= Jump_Ad;
        end if;
    end process;
end Behavioral;
