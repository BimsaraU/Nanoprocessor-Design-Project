library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity AU_CARRY4_NO_LUT is
    Port (
        A        : in  STD_LOGIC_VECTOR(3 downto 0);
        B        : in  STD_LOGIC_VECTOR(3 downto 0);
        Sub      : in  STD_LOGIC;  -- '0' = A+B, '1' = A-B
        S        : out STD_LOGIC_VECTOR(3 downto 0);
        Overflow : out STD_LOGIC;
        Zero     : out STD_LOGIC
    );
end AU_CARRY4_NO_LUT;

architecture Behavioral of AU_CARRY4_NO_LUT is

    signal DI_in   : STD_LOGIC_VECTOR(3 downto 0);
    signal S_in    : STD_LOGIC_VECTOR(3 downto 0);
    signal Carry   : STD_LOGIC_VECTOR(4 downto 0);
    signal Sum_out : STD_LOGIC_VECTOR(3 downto 0);
    signal B_mod   : STD_LOGIC_VECTOR(3 downto 0);
    signal Sub_vec : STD_LOGIC_VECTOR(3 downto 0);

begin

    -- Generate a vector with all bits equal to Sub for XOR logic via wiring
    Sub_vec <= (others => Sub);

    -- Perform B XOR Sub using only wiring (no LUTs)
    B_mod <= B xor Sub_vec;  -- XOR is mapped to MUXCY + XORCY internally in CARRY4

    -- For CARRY4:
    -- S = A xor B', DI = B' (for carry generation)
    S_in  <= A xor B_mod;
    DI_in <= B_mod;

    -- Initial carry-in = Sub (0 for add, 1 for subtract)
    Carry(0) <= Sub;

    -- Instantiate CARRY4
    U_CARRY4 : CARRY4
        port map (
            CI     => Carry(0),
            CYINIT => '0',         -- Unused when CI is used
            DI     => DI_in,
            S      => S_in,
            CO     => Carry(4 downto 1), -- Carry outputs
            O      => Sum_out            -- Sum outputs (MUXCY XOR S)
        );

    S <= Sum_out;

    -- Overflow detection:
    -- Overflow = Carry into MSB XOR Carry out of MSB
    Overflow <= Carry(3) xor Carry(4);

    -- Zero detection via wiring (no LUTs ideally)
    process(Sum_out)
    begin
        if Sum_out = "0000" then
            Zero <= '1';
        else
            Zero <= '0';
        end if;
    end process;

end Behavioral;
