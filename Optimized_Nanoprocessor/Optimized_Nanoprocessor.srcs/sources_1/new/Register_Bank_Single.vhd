library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Register_Bank_Single is
PORT (
    RegEn   : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
    Data    : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
    Clk     : IN  STD_LOGIC;
    Reg0    : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    Reg1    : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    Reg2    : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    Reg3    : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    Reg4    : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    Reg5    : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    Reg6    : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    Reg7    : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
);

end Register_Bank_Single;

architecture Behavioral of Register_Bank_Single is

Signal R0, R1, R2, R3, R4, R5, R6, R7 : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');

begin

process(RegEn,Data,Clk)
begin
 if rising_edge(Clk) then
     case RegEn is
          when "000" => Null;
          when "001" => R1 <= Data;
          when "010" => R2 <= Data;
          when "011" => R3 <= Data;
          when "100" => R4 <= Data;
          when "101" => R5 <= Data;
          when "110" => R6 <= Data;
          when "111" => R7 <= Data;
          when others => null;
     end case;
 end if;
end process;

Reg0 <= R0;
Reg1 <= R1;
Reg2 <= R2;
Reg3 <= R3;
Reg4 <= R4;
Reg5 <= R5;
Reg6 <= R6;
Reg7 <= R7;


end Behavioral;
