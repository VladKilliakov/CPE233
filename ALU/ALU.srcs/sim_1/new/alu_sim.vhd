----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/30/2017 09:33:26 AM
-- Design Name: 
-- Module Name: alu_sim - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity alu_sim is
    --Port();
end alu_sim;


architecture Behavioral of alu_sim is
    component alu port(A, B: in std_logic_vector(7 downto 0);
                      SEL: in std_logic_vector(3 downto 0);
                      Cin: in std_logic;
                      RESULT: out std_logic_vector(7 downto 0);
                      C: out std_logic;
                      Z: out std_logic);
    end component;
    
signal s_a, s_b: std_logic_vector(7 downto 0);
signal s_sel: std_logic_vector(3 downto 0);
signal s_cin, s_c, s_z: std_logic;
signal s_result: std_logic_vector(7 downto 0);
    
begin
    UUT: alu port map (a => s_a,
                       b => s_b,
                       sel => s_sel,
                       cin => s_cin,
                       c => s_c,
                       z => s_z,
                       result => s_result);
    process begin
        -- ADD function
        s_sel <= "0000";
        s_a <= "10101010";
        s_b <= "10101010";
        s_cin <= '0';
        wait for 10 ns;
        
        s_sel <= "0000";
        s_a <= "00001010";
        s_b <= "10100000";
        s_cin <= '1';
        wait for 10 ns;
        
        s_sel <= "0000";
        s_a <= "11111111";
        s_b <= "00000001";
        s_cin <= '0';
        wait for 10 ns;
        
        -- ADDC function
        s_sel <= "0001";
        s_a <= "11001000";
        s_b <= "00110110";
        s_cin <= '1';
        wait for 10 ns;
        
        s_sel <= "0001";
        s_a <= "11001000";
        s_b <= "01100100";
        s_cin <= '1';
        wait for 10 ns;
        
        -- SUB function
        s_sel <= "0010";
        s_a <= "11001000";
        s_b <= "01100100";
        s_cin <= '0';
        wait for 10 ns;
        
        s_sel <= "0010";
        s_a <= "11001000";
        s_b <= "01100100";
        s_cin <= '1';
        wait for 10 ns;
        
        s_sel <= "0010";
        s_a <= "01100100";
        s_b <= "11001000";
        s_cin <= '0';
        wait for 10 ns;        
        
        -- SUBC function
        s_sel <= "0011";
        s_a <= "11001000";
        s_b <= "01100100";
        s_cin <= '0';
        wait for 10 ns;
        
        s_sel <= "0011";
        s_a <= "11001000";
        s_b <= "01100100";
        s_cin <= '1';
        wait for 10 ns;
        
        s_sel <= "0011";
        s_a <= "01100100";
        s_b <= "11001000";
        s_cin <= '0';
        wait for 10 ns; 
        
        s_sel <= "0011";
        s_a <= "01100100";
        s_b <= "11001000";
        s_cin <= '1';
        wait for 10 ns; 
        
        -- CMP function
        s_sel <= "0100";
        s_a <= "10101010";
        s_b <= "11111111";
        s_cin <= '0';
        wait for 10 ns; 
        
        s_sel <= "0100";
        s_a <= "11111111";
        s_b <= "10101010";
        s_cin <= '0';
        wait for 10 ns;
        
        s_sel <= "0100";
        s_a <= "10101010";
        s_b <= "10101010";
        s_cin <= '0';
        wait for 10 ns;
        
        -- AND function
        s_sel <= "0101";
        s_a <= "10101010";
        s_b <= "10101010";
        s_cin <= '0';
        wait for 10 ns;
        
        s_sel <= "0101";
        s_a <= "00000011";
        s_b <= "10101010";
        s_cin <= '0';
        wait for 10 ns;
        
        -- OR function
        s_sel <= "0110";
        s_a <= "10101010";
        s_b <= "10101010";
        s_cin <= '0';
        wait for 10 ns;
        
        s_sel <= "0110";
        s_a <= "00000011";
        s_b <= "10101010";
        s_cin <= '0';
        wait for 10 ns;
        
        -- EXOR function
        s_sel <= "0111";
        s_a <= "10101010";
        s_b <= "10101010";
        s_cin <= '0';
        wait for 10 ns;
        
        s_sel <= "0111";
        s_a <= "00000011";
        s_b <= "10101010";
        s_cin <= '0';
        wait for 10 ns;
        
        -- TEST function
        s_sel <= "1000";
        s_a <= "10101010";
        s_b <= "10101010";
        s_cin <= '0';
        wait for 10 ns;
        
        s_sel <= "1000";
        s_a <= "01010101";
        s_b <= "10101010";
        s_cin <= '0';
        wait for 10 ns;
        
        -- LSL function
        s_sel <= "1001";
        s_a <= "00000001";
        s_b <= "00010010";
        s_cin <= '0';
        wait for 10 ns;
        
        -- LSR function
        s_sel <= "1010";
        s_a <= "10000000";
        s_b <= "00110011";
        s_cin <= '0';
        wait for 10 ns;
        
        s_sel <= "1010";
        s_a <= "10000000";
        s_b <= "01000011";
        s_cin <= '1';
        wait for 10 ns;
        
        -- ROL function
        s_sel <= "1011";
        s_a <= "00000001";
        s_b <= "10101011";
        s_cin <= '1';
        wait for 10 ns;
        
        s_sel <= "1011";
        s_a <= "10101010";
        s_b <= "11110010";
        s_cin <= '0';
        wait for 10 ns;
        
        -- ROR function
        s_sel <= "1100";
        s_a <= "10000000";
        s_b <= "00111100";
        s_cin <= '0';
        wait for 10 ns;
        
        s_sel <= "1100";
        s_a <= "10000000";
        s_b <= "10011000";
        s_cin <= '1';
        wait for 10 ns;
        
        -- ASR function
        s_sel <= "1101";
        s_a <= "10000000";
        s_b <= "10000001";
        s_cin <= '0';
        wait for 10 ns;
        
        s_sel <= "1101";
        s_a <= "01000000";
        s_b <= "10110010";
        s_cin <= '0';
        wait for 10 ns;
        
        -- MOV function
        s_sel <= "1110";
        s_a <= "01010000";
        s_b <= "00110000";
        s_cin <= '0';
        wait for 10 ns;
        
        s_sel <= "1110";
        s_a <= "01000011";
        s_b <= "00100010";
        s_cin <= '1';
        wait for 10 ns;
        
        wait;
    end process;
end Behavioral;
