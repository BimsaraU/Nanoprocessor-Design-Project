library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity Instruction_Decoder_2 is
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
end Instruction_Decoder_2;

architecture Behavioral of Instruction_Decoder_2 is

    component ZeroFlag_4 is
        Port (
            Val  : in  STD_LOGIC_VECTOR(3 downto 0);
            Zero : out STD_LOGIC;
            En   : in  STD_LOGIC
        );       
    end component;

    signal JF : STD_LOGIC;
    signal opcode           : STD_LOGIC_VECTOR(1 downto 0);
    signal Dummy_O, Dummy_C : STD_LOGIC_VECTOR(3 downto 0);
    signal COJ, COI, OS     : STD_LOGIC_VECTOR(3 downto 0);
    signal TMP, TMP2        : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');

begin

    opcode <= Instruction(11 downto 10);


    TMP(1 downto 0)  <= opcode;
    TMP2(1 downto 0) <= not opcode;
    TMP2(2) <= '1';

    

    JFlag : ZeroFlag_4
        port map (
            Val  => JumpCheck,
            Zero => JF,
            En   => '1'
        );
     JumpFlag <= JF when opcode = "11" else '0';

    
    process(opcode, Instruction, JumpCheck)
    begin
        -- Default outputs
        RegEn       <= (others => '0');
        Sel_A       <= (others => '0');
        Sel_B       <= (others => '0');
        LoadSel     <= '0';
        ImmVal      <= (others => '0');
        Sub         <= '1';
        JumpAddress <= (others => '0');
        case opcode is
            when "00" =>  -- ADD
                RegEn <= Instruction(9 downto 7);
                Sel_A <= Instruction(9 downto 7);
                Sel_B <= Instruction(6 downto 4);
            when "01" =>  -- NEG
                RegEn <= Instruction(9 downto 7);
                Sel_B <= Instruction(6 downto 4);
                Sub   <= '0';
            when "10" =>  -- MOVI
                RegEn   <= Instruction(9 downto 7);
                LoadSel <= '1';
                ImmVal  <= Instruction(3 downto 0);
            when "11" =>  -- JZR
                Sel_A       <= Instruction(9 downto 7);
                JumpAddress <= Instruction(2 downto 0);
--                if JumpCheck = "0000" then
--                    JumpFlag <= '1';
--                end if;
            when others =>
                null;
        end case;
    end process;

end Behavioral;
