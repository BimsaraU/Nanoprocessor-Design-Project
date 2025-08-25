library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Program_ROM is
    port(
        ROM_address : in STD_LOGIC_VECTOR (2 downto 0);
        I          : out STD_LOGIC_VECTOR (16 downto 0);
        Program    : in STD_LOGIC_VECTOR (1 downto 0)
    ); 
end Program_ROM;

architecture Behavioral of Program_ROM is

    type ROM_Type is array (0 to 7) of STD_LOGIC_VECTOR(16 downto 0);

    constant Program1 : ROM_Type := (
        "01011100000000111", -- MOVI R7, 7
        "01000100000000001", -- MOVI R1, 1 
        "00100000100000001", -- SUB  R0, R1 => R1
        "01001000000000111", -- MOVI R2, 8 
        "00001000100000000", -- ADD  R2, R1 
        "00011101000000000", -- ADD  R7, R2 
        "01101000000000110", -- JZR  R2, 6 
        "01100000000000100"  -- JZR  R0, 4 
    );

    constant Program2 : ROM_Type := (
        "01011100000000111", -- MOVI R7, 7
        "01011000000000010", -- MOVI R6, 2 
        "10011111000000000", -- MUL R7, R6  
        "01010100000000100", -- MOVI R5, 4
        "10111110100000000", -- DIV R7, R5, Q 
        "01011000000011011", -- MOVI R6, 27  
        "10111010100000001", -- DIV R6, R5, R
        "01100000000000111"  -- HALT
    );

    constant Program3 : ROM_Type := (
        "01011100000110010", -- MOVI R7, 50 
        "01011000000001111", -- MOVI R6, 15
        "01010100000011110", -- MOVI R5, 30 
        "01010000000001100", -- MOVI R4, 12 
        "11011111000000000", -- COMP R7, R6, G 
        "11010110000000001", -- COMP R5, R4, L
        "11100000000000110", -- DIV R7, R5, R
        "01100000000000111"  -- HALT
    );

    constant Program4 : ROM_Type := (
        "01011000011111000", -- MOVI R6, 0xF8 (1111 1000) 248
        "01011100000001111", -- MOVI R7, 0x0F (0000 1111)  15
        "11111111000000000", -- BITWISE R7, R6, AND  ; R6 := R7 AND R6 = 00001000 = 8
        "11111011100001000", -- MOVI R6, 0xF8 (0000 1000) 8
        "01011000001000000", -- MOVI R6, 0x40 (0100 0000) 64
        "11111111000000001",--  BITWISE R7, R6 OR 48(0100 1000) 72
        "01001100101000001", -- MOVI R3,  0x41  (0100 0001) 135
        "11101100000000011"  -- BITWISE R3  NOT  0xbE (1011 1110) 110

    );

begin

    process(ROM_address, Program)
    variable addr : integer;
    begin
        addr := to_integer(unsigned(ROM_address));

        if addr < 8 then
            case Program is
                when "00" => I <= Program1(addr);
                when "01" => I <= Program2(addr);
                when "10" => I <= Program3(addr);
                when "11" => I <= Program4(addr);
                when others => I <= (others => '0');
            end case;
        else
            I <= (others => '0');
        end if;
    end process;

end Behavioral;
    