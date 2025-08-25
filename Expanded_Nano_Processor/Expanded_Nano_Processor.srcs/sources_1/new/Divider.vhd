library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Divider is
    Port (
        A : in  STD_LOGIC_VECTOR(7 downto 0); 
        B : in  STD_LOGIC_VECTOR(7 downto 0); 
        S : out STD_LOGIC_VECTOR(7 downto 0); 
        C : out STD_LOGIC_VECTOR(7 downto 0)  
    );
end Divider;


architecture Behavioral of Divider is
    signal dividend : unsigned(7 downto 0);
    signal divisor  : unsigned(7 downto 0);
    signal quotient : unsigned(7 downto 0);
    signal remainder: unsigned(7 downto 0);
    
    attribute use_dsp : string;
    attribute use_dsp of Behavioral : architecture is "yes";
    
    
begin

    dividend <= unsigned(A);
    divisor  <= unsigned(B);

    process(dividend, divisor)
    begin
        if divisor /= 0 then
            quotient  <= dividend / divisor;
            remainder <= dividend mod divisor;
        else
            quotient  <= (others => '0');  
            remainder <= (others => '0');         
        end if;
    end process;

    S <= std_logic_vector(quotient);
    C <= std_logic_vector(remainder);

end Behavioral;
