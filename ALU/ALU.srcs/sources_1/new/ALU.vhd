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
            -- ADD
            when "0000" => 
                    temp := std_logic_vector(a_ext + b_ext);
                  
            -- ADDC         
            when "0001" =>
                    temp := std_logic_vector(a_ext + b_ext + c_ext);
                    
           -- SUB         
           when "0010" =>
                    temp := std_logic_vector(a_ext - b_ext);
                    
           -- SUBC          
           when "0011" =>
                    temp := std_logic_vector(a_ext - b_ext - c_ext);
                    
           -- CMP         
           when "0100" =>
                    temp := std_logic_vector(a_ext - b_ext);
                    
          -- AND           
          when  "0101" =>
                    temp:= '0' & (A and B);
                    
          -- OR           
          when "0110" =>
                    temp:= '0' & (A or B);
                    
          -- EXOR          
          when "0111" =>
                    temp:= '0' & (A XOR B);
                    
          -- TEST          
          when "1000" =>
                    temp:= '0' & (A and B);
                    
          -- LSL          
          when "1001" =>
                    temp := A & Cin;
                    
          -- LSR          
          when "1010" =>
                    temp := A(0) & Cin & A(7 downto 1);
                    
          -- ROL          
          when "1011" =>
                    temp := A(7) & A(6 downto 0) & A(7);
                    
          -- ROR          
          when "1100" =>
                   temp := A(0) & A(0) & A(7 downto 1);
                   
          -- ASR         
          when "1101" =>
                   temp := A(0) & A(7) & A(7 downto 1);
                   
          -- MOV         
          when "1110" =>
                   temp := Cin & B;
                   
          when others => 
                   temp := "000000000";
                   Result <= "00000000";
          end case;
          
          C <= temp(8);
          Result <= temp(7 downto 0);
          
          if temp(7 downto 0) = "00000000" then
             Z <= '1';
          else
             Z <= '0';
          end if; 
      end process;
                                                                        
end Behavioral;
