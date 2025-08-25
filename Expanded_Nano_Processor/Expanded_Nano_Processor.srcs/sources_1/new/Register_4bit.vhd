library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Register_8bit is
    Port ( 
        Clk     : in STD_LOGIC; 
        Res     : in STD_LOGIC;                    
        En      : in STD_LOGIC;                     
        D       : in STD_LOGIC_VECTOR(7 downto 0);  
        Q       : out STD_LOGIC_VECTOR(7 downto 0) 
    );
end Register_8bit;

architecture Behavioral of Register_8bit is
    signal Q_reg : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');  
begin
    process(Clk, Res)
    begin
       if rising_edge(Clk) then
            if Res = '1' then
               Q_reg <= "00000000";
            else
               if En = '1' then
                  Q_reg <= D;
               end if;
            end if;
       end if;
    end process;

    Q <= Q_reg;
end Behavioral;
