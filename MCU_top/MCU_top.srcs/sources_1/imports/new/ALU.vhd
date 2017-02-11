library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU is
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           SEL : in STD_LOGIC_VECTOR (3 downto 0);
           Cin : in STD_LOGIC;
           C : out STD_LOGIC;
           Z : out STD_LOGIC;
           Result : out STD_LOGIC_VECTOR (7 downto 0));
end ALU;

architecture Behavioral of ALU is

signal a_ext: unsigned (8 downto 0);
signal b_ext: unsigned (8 downto 0);
signal c_ext: unsigned (0 downto 0);

begin
    a_ext <= unsigned ("0" & a);
    b_ext <= unsigned ("0" & b);
    c_ext (0) <= Cin;
    
    process(SEL, A, B, Cin, a_ext, b_ext, c_ext) 
    variable temp : std_logic_vector(8 downto 0);
    begin   
       case SEL is
            when "0000" => 
                    temp := std_logic_vector(a_ext + b_ext);
                    Result <= temp(7 downto 0);
            when "0001" =>
                    temp := std_logic_vector(a_ext + b_ext + c_ext);
                    Result <= temp(7 downto 0);
           when "0010" =>
                    temp := std_logic_vector(a_ext - b_ext);
                    Result <= temp(7 downto 0);
           when "0011" =>
                    temp := std_logic_vector(a_ext - b_ext - c_ext);
                    Result <= temp(7 downto 0);
           when "0100" =>
                    temp := std_logic_vector(a_ext - b_ext);
                    Result <= x"00";
          when  "0101" =>
                    temp:= '0' & (A and B);
                    Result <= temp(7 downto 0);
          when "0110" =>
                    temp:= '0' & (A or B);
                    Result <= temp(7 downto 0);
          when "0111" =>
                    temp:= '0' & (A XOR B);
                    Result <= temp(7 downto 0);               
          when "1000" =>
                    temp:= '0' & (A and B);
                    Result <= temp(7 downto 0);             
          when "1001" =>
                    temp := A & Cin;
                    Result <= temp(7 downto 0);
          when "1010" =>
                    temp := Cin & A;
                    Result <= temp(8 downto 1);
                    temp := temp(0) & temp(8 downto 1);
          when "1011" =>
                    temp := A & A(7);
                    Result <= temp(7 downto 0);
                    temp := temp(0) & temp(8 downto 1);
          when "1100" =>
                   temp := A(0) & A;
                   Result <= temp(8 downto 1);
                   temp := temp(0) & temp(8 downto 1);
          when "1101" =>
                   temp := A(7) & A;
                   Result <= temp(8 downto 1);
                   temp := temp(0) & temp(8 downto 1);
          when "1110" =>
                   temp := Cin & B;
                   Result <= B;
          when others => Result <= "00000000";
          end case;
          C <= temp(8);
          if temp(7 downto 0) = "00000000" then
             Z <= '1';
          else
             Z <= '0';
          end if; 
      end process;
                                                                        
end Behavioral;
