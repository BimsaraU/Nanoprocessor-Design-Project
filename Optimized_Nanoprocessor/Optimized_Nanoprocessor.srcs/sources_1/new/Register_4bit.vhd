library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Register_4bit is
    Port ( 
        Clk     : in STD_LOGIC; 
        Reset   : in STD_LOGIC;                
        En      : in STD_LOGIC;                     
        D       : in STD_LOGIC_VECTOR(3 downto 0);  
        Q       : out STD_LOGIC_VECTOR(3 downto 0) 
    );
end Register_4bit;

architecture Behavioral of Register_4bit is
    signal Q_reg : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
begin
    process(Clk)
    begin
        if rising_edge(Clk) then
            if Reset = '1' then
                Q_reg <= (others => '0');
            elsif En = '1' then
                Q_reg <= D;
            end if;
        end if;
    end process;

    Q <= Q_reg;  
end Behavioral;
