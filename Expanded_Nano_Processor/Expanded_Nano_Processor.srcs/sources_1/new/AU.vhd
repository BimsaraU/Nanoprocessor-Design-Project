library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AU is
    Port ( Mode : in STD_LOGIC_VECTOR (2 downto 0);
           T : in STD_LOGIC_VECTOR (1 downto 0);
           
           A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           Sub : in STD_LOGIC;
          
           S : out STD_LOGIC_VECTOR (7 downto 0);
           Overflow : out STD_LOGIC;
           Zero : out STD_LOGIC);
end AU;

architecture Behavioral of AU is

COMPONENT c_addsub_0 IS
  PORT (
    A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    ADD : IN STD_LOGIC;
    C_OUT : OUT STD_LOGIC;
    S : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;

Component Divider is
    Port (
        A : in  STD_LOGIC_VECTOR(7 downto 0); 
        B : in  STD_LOGIC_VECTOR(7 downto 0); 
        S : out STD_LOGIC_VECTOR(7 downto 0); 
        C : out STD_LOGIC_VECTOR(7 downto 0)  
    );
end Component;

Component Multiplier is
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           S : out STD_LOGIC_VECTOR (7 downto 0));
end Component;

Component Comparator is
    Port (
        A : in  STD_LOGIC_VECTOR (7 downto 0);
        B : in  STD_LOGIC_VECTOR (7 downto 0);
        G : out STD_LOGIC_VECTOR (7 downto 0);  
        L : out STD_LOGIC_VECTOR (7 downto 0)   
            );
end Component;

Component BitwiseOperator is
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           Type_Sel : in STD_LOGIC_VECTOR (1 downto 0);
           O : out STD_LOGIC_VECTOR (7 downto 0));
end Component;

Signal OP ,Sum, Greater, Lower, Product, Remainder, Quotient, D, C, BO : STD_LOGIC_VECTOR (7 downto 0);
Signal Add : STD_LOGIC;

begin


Add <= Not Sub;

Div : Divider
    Port Map(
        A => A,
        B => B,
        S => Quotient,
        C => Remainder
    );
    
Mult : Multiplier
        Port Map(
            A => A,
            B => B,
            S => Product
        );
Comp : Comparator
        Port Map(
            A => A,
            B => B,
            G => Greater,
            L => Lower
        );


addsub : c_addsub_0 
  PORT MAP(
        A => A,
        B => B,
      ADD => Add,
    C_OUT => Overflow,
        S => Sum
  );
  
BU : BitwiseOperator 
    PORT MAP(
          A => A,
          B => B,
        Type_Sel => T,
           O => BO
    );
  
Div_Sel : Process(T)
begin
  case T is
    when "00" => D <= Quotient;
    when "01" => D <= Remainder;
    when others => D <= (others => '0');
  end case;
end process;

Comp_Sel : Process(T)
begin
  case T is
    when "00" => C <= Greater;
    when "01" => C <= Lower;
    when others => C <= (others => '0');
  end case;
end process;

OP_Sel : Process(Mode)
begin
  case Mode is
    when "000" => OP <= Sum;
    when "001" => OP <= Product;
    when "010" => OP <= D;
    when "011" => OP <= C;
    when "100" => OP <= BO;
    when others => OP <= (others => '0');
  end case;
end process;

S <= OP;
Zero <= '1' when OP = "00000000" else '0';

end Behavioral;
