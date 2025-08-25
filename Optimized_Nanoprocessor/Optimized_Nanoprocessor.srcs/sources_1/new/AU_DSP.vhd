library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity AU_DSP is
    Port (
        A        : in  STD_LOGIC_VECTOR (3 downto 0);
        B        : in  STD_LOGIC_VECTOR (3 downto 0);
        Sub      : in  STD_LOGIC;
        S        : out STD_LOGIC_VECTOR (3 downto 0);
        Overflow : out STD_LOGIC;
        Zero     : out STD_LOGIC
    );
end AU_DSP;

architecture Behavioral of AU_DSP is

    signal A_signed      : signed(4 downto 0);
    signal B_signed      : signed(4 downto 0);
    signal B_modified    : signed(4 downto 0);
    signal Result_signed : signed(4 downto 0);
    signal Result_int    : integer := 0;
    signal Mult_result   : integer := 0;

    -- Force DSP usage for multiply result
    attribute use_dsp : string;
    attribute use_dsp of Mult_result : signal is "yes";

begin

    -- Extend A and B to 5 bits for overflow detection
    A_signed <= signed('0' & A);
    B_signed <= signed('0' & B);

    -- If Sub = '1', negate B_signed (2's complement)
    B_modified <= B_signed when Sub = '0' else not B_signed + 1;

    -- Perform signed addition or subtraction
    Result_signed <= A_signed + B_modified;

    -- Output result (lower 4 bits)
    S <= std_logic_vector(Result_signed(3 downto 0));

    -- Overflow detection: if the 5th bit (MSB) doesn't match bit 3, it's overflow
    Overflow <= '1' when (Result_signed(4) xor Result_signed(3)) = '1' else '0';

    -- Convert result to integer and multiply (forces DSP use)
    Result_int  <= to_integer(Result_signed);
    Mult_result <= Result_int * 1;

    -- Zero flag
    Zero <= '1' when Mult_result = 0 else '0';

end Behavioral;
