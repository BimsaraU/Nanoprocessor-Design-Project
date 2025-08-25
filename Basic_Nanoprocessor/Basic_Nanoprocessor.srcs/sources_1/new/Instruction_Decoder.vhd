library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Instruction_Decoder is
    Port (
        Instruction   : in  STD_LOGIC_VECTOR(11 downto 0);
        JumpCheck     : in  STD_LOGIC_VECTOR(3 downto 0);
        RegEn         : out STD_LOGIC_VECTOR(2 downto 0);
        Sel_A         : out STD_LOGIC_VECTOR(2 downto 0);
        Sel_B         : out STD_LOGIC_VECTOR(2 downto 0);
        LoadSel       : out STD_LOGIC;
        ImmVal        : out STD_LOGIC_VECTOR(3 downto 0);
        Sub           : out STD_LOGIC;
        JumpFlag      : out STD_LOGIC;
        JumpAddress   : out STD_LOGIC_VECTOR(2 downto 0)
    );
end Instruction_Decoder;

architecture Behavioral of Instruction_Decoder is
    signal opcode : STD_LOGIC_VECTOR(1 downto 0);
begin

    opcode <= Instruction(11 downto 10);

    process(opcode, Instruction, JumpCheck)
    begin
        -- Default outputs
        RegEn       <= (others => '0');
        Sel_A       <= (others => '0');
        Sel_B       <= (others => '0');
        LoadSel     <= '0';
        ImmVal      <= (others => '0');
        Sub         <= '0';
        JumpFlag    <= '0';
        JumpAddress <= (others => '0');

        case opcode is
            when "00" =>  -- ADD
                RegEn <= Instruction(9 downto 7);
                Sel_A <= Instruction(9 downto 7);
                Sel_B <= Instruction(6 downto 4);

            when "01" =>  -- NEG
                RegEn <= Instruction(9 downto 7);
                Sel_B <= Instruction(9 downto 7);
                Sub   <= '1';

            when "10" =>  -- MOVI
                RegEn   <= Instruction(9 downto 7);
                LoadSel <= '1';
                ImmVal  <= Instruction(3 downto 0);

            when "11" =>  -- JZR
                Sel_A       <= Instruction(9 downto 7);
                JumpAddress <= Instruction(2 downto 0);
                if JumpCheck = "0000" then
                    JumpFlag <= '1';
                end if;

            when others =>
                -- Already covered by default assignments
                null;
        end case;
    end process;
end Behavioral;
