library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Display_Driver_L6 is
    Port ( Address : in STD_LOGIC_VECTOR (3 downto 0);
           driver_signal : out STD_LOGIC_VECTOR (6 downto 0);
           Anode : out STD_LOGIC_VECTOR (3 downto 0)
         );
end Display_Driver_L6;

architecture Behavioral of Display_Driver_L6 is

    signal A : std_logic := Address(3);
    signal B : std_logic := Address(2);
    signal C : std_logic := Address(1);
    signal D : std_logic := Address(0);

    signal seg0, seg1, seg2, seg3, seg4, seg5, seg6 : std_logic;

    attribute use_dsp : string;
    attribute use_dsp of seg0, seg1, seg2, seg3, seg4, seg5, seg6 : signal is "no";

    attribute dont_touch : string;
    attribute dont_touch of seg0, seg1, seg2, seg3, seg4, seg5, seg6 : signal is "yes";

    -- Force usage of LUT6
    attribute KEEP : string;
    attribute KEEP of seg0, seg1, seg2, seg3, seg4, seg5, seg6 : signal is "true";

begin

    -- Segment 0 (a)
    seg0 <= not ((not A and not B and not C and D) or
                 (not A and B and not C and not D) or
                 (A and not B and C and D) or
                 (A and B and not C and D));

    -- Segment 1 (b)
    seg1 <= not ((not A and B and not C and D) or
                 (A and C and D) or
                 (B and C and not D) or
                 (A and B and not D));

    -- Segment 2 (c)
    seg2 <= not ((A and B and not D) or
                 (C and not D) or
                 (A and B and C));

    -- Segment 3 (d)
    seg3 <= not ((not A and not B and not C and D) or
                 (not A and B and not C and not D) or
                 (B and C and D) or
                 (A and not B and C and not D));

    -- Segment 4 (e)
    seg4 <= not ((not A and D) or
                 (not B and not C and D) or
                 (not A and B and not C));

    -- Segment 5 (f)
    seg5 <= not ((not A and not B and D) or
                 (not A and not B and C) or
                 (not A and C and D) or
                 (A and B and not C and D));

    -- Segment 6 (g)
    seg6 <= not ((not A and not B and not C) or
                 (A and B and not C and not D) or
                 (not A and B and C and D));

    driver_signal <= seg6 & seg5 & seg4 & seg3 & seg2 & seg1 & seg0;
    Anode <= "1110";

end Behavioral;
