library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Instruction_Decoder is
    Port (
        Instruction   : in  STD_LOGIC_VECTOR(16 downto 0);
        JumpCheck     : in  STD_LOGIC_VECTOR(7 downto 0);
        RegEn         : out STD_LOGIC_VECTOR(2 downto 0);
        Sel_A         : out STD_LOGIC_VECTOR(2 downto 0);
        Sel_B         : out STD_LOGIC_VECTOR(2 downto 0);
        LoadSel       : out STD_LOGIC;
        ImmVal        : out STD_LOGIC_VECTOR(7 downto 0);
        Sub           : out STD_LOGIC;
        JumpFlag      : out STD_LOGIC;
        JumpAddress   : out STD_LOGIC_VECTOR(2 downto 0);
        
                 Mode : out STD_LOGIC_VECTOR (2 downto 0);
                    T : out STD_LOGIC_VECTOR (1 downto 0)
    );
end Instruction_Decoder;

architecture Behavioral of Instruction_Decoder is
    signal opcode : STD_LOGIC_VECTOR(2 downto 0);
begin

    opcode <= Instruction(16 downto 14);

    process(opcode, Instruction, JumpCheck)
    begin
        -- Default outputs
        RegEn       <= (others => '0');
        Sel_A       <= (others => '0');
        Sel_B       <= (others => '0');
        LoadSel     <= '0';
        ImmVal      <= Instruction(7 downto 0);
        Sub         <= '0';
        JumpFlag    <= '0';
               T    <= "00";
               Mode <= (others => '0');
        JumpAddress <= (others => '0');

        case opcode is
            when "000" =>  -- ADD
                RegEn <= Instruction(13 downto 11);
                Sel_A <= Instruction(13 downto 11);
                Sel_B <= Instruction(10 downto 8);
                Mode <= "000";

            when "001" =>  -- SUB
                RegEn <= Instruction(2 downto 0);
                Sel_A <= Instruction(13 downto 11);
                Sel_B <= Instruction(10 downto 8);
                Mode <= "000";
                Sub   <= '1';
                
            when "010" =>  -- MOVI (
                RegEn   <= Instruction(13 downto 11);
                LoadSel <= '1';
                ImmVal  <= Instruction(7 downto 0);

            when "011" =>  -- JMZ
                RegEn <= Instruction(13 downto 11);
                Sel_A       <= Instruction(13 downto 11);
                JumpAddress <= Instruction(2 downto 0);
                if JumpCheck = "00000000" then
                    JumpFlag <= '1';
                end if;

            when "100" => -- Mult 
                RegEn <= Instruction(13 downto 11);
                Sel_A <= Instruction(13 downto 11);
                Sel_B <= Instruction(10 downto 8);
                Mode  <= "001";
                
            when "101" => -- Div 
                RegEn <= Instruction(13 downto 11);
                Sel_A <= Instruction(13 downto 11);
                Sel_B <= Instruction(10 downto 8);
                Mode <= "010";
                T <= Instruction(1 downto 0);
                
            when "110" => -- Com (Divide)
                RegEn <= Instruction(13 downto 11);
                Sel_A <= Instruction(13 downto 11);
                Sel_B <= Instruction(10 downto 8);
                Mode <= "011";
                T <= Instruction(1 downto 0);
            
            when "111" => -- BITWISE 
                RegEn <= Instruction(13 downto 11);
                Sel_A <= Instruction(13 downto 11);
                Sel_B <= Instruction(10 downto 8);
                Mode <= "100";
                T <= Instruction(1 downto 0);
             when others =>                               
                null;
        end case;
    end process;
end Behavioral;
