library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Display_Driver is
    Port ( 
        Clk          : in  STD_LOGIC;
        Type_Sel     : in  STD_LOGIC;  
        R0, R1, R2, R3, R4, R5, R6, R7 : in STD_LOGIC_VECTOR (7 downto 0);
        Reg_Sel      : in  STD_LOGIC_VECTOR (2 downto 0);
        PC_in        : in  STD_LOGIC_VECTOR (2 downto 0);
        driver_signal: out STD_LOGIC_VECTOR (6 downto 0);
        data         : out STD_LOGIC_VECTOR (7 downto 0);
        Anode        : out STD_LOGIC_VECTOR (3 downto 0)
    );
end Display_Driver;

architecture Behavioral of Display_Driver is
    component MUX8 is
        Port (
            Sel : in  STD_LOGIC_VECTOR(2 downto 0);
            I0  : in  STD_LOGIC_VECTOR(7 downto 0);
            I1  : in  STD_LOGIC_VECTOR(7 downto 0);
            I2  : in  STD_LOGIC_VECTOR(7 downto 0);
            I3  : in  STD_LOGIC_VECTOR(7 downto 0);
            I4  : in  STD_LOGIC_VECTOR(7 downto 0);
            I5  : in  STD_LOGIC_VECTOR(7 downto 0);
            I6  : in  STD_LOGIC_VECTOR(7 downto 0);
            I7  : in  STD_LOGIC_VECTOR(7 downto 0);
            O   : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;

    component Slow_Clk_Bin is
        generic (
            N : INTEGER := 26
        );
        Port (
            Clk_in  : in  STD_LOGIC;
            Clk_out : out STD_LOGIC
        );
    end component;

    signal D       : unsigned(1 downto 0) := (others => '0');
    signal Selected_Value : STD_LOGIC_VECTOR(7 downto 0);
    signal SC      : STD_LOGIC;
    type rom_type is array (0 to 15) of std_logic_vector(6 downto 0);
    
    signal DO : rom_type := (
          "1000000", -- 0
          "1111001", -- 1
          "0100100", -- 2
          "0110000", -- 3
          "0011001", -- 4
          "0010010", -- 5
          "0000010", -- 6
          "1111000", -- 7
          "0000000", -- 8
          "0010000", -- 9
          "0001000", -- A
          "0000011", -- B
          "1000110", -- C
          "0100001", -- D
          "0000110", -- E
          "0001110"  -- F
    );

begin
    Selected_Address : MUX8
        Port Map (
            Sel => Reg_Sel,
            I0  => R0,
            I1  => R1,
            I2  => R2,
            I3  => R3,
            I4  => R4,
            I5  => R5,
            I6  => R6,
            I7  => R7,
            O   => Selected_Value
        );

    SlowClk : Slow_Clk_Bin
        generic map ( N => 16 )
        port map (
            Clk_in  => Clk,
            Clk_out => SC
        );

    Display : process(SC)
    begin
        if rising_edge(SC) then
            D <= D + 1;
        end if;
    end process;

    Display_drive : process(D, Selected_Value, Type_Sel, PC_in)
    begin
        case D is
            when "00" => 
                driver_signal <= DO(to_integer(unsigned(Selected_Value(3 downto 0))));
                Anode <= "1110"; 
            when "01" =>  
                driver_signal <= DO(to_integer(unsigned(Selected_Value(7 downto 4))));
                Anode <= "1101";  
            when "10" =>  
                if Type_Sel = '1' and Selected_Value(7) = '1' then
                    driver_signal <= "0111111";  
                else
                    driver_signal <= "1111111";  
                end if;
                Anode <= "1011";  
            when others =>  -- "11"
                driver_signal <= DO(to_integer(unsigned(PC_in)));
                Anode <= "0111";  
        end case;
    end process;

    data <= Selected_Value;
end Behavioral;