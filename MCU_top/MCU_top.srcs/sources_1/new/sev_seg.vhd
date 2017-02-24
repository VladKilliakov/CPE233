library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Sev_Seg is
    Port ( Clk : in STD_LOGIC;
           Input : in STD_LOGIC_VECTOR (15 downto 0);
           AnBus : out STD_LOGIC_VECTOR (3 downto 0);
           CaBus : out STD_LOGIC_VECTOR (7 downto 0));
           
end Sev_Seg;

architecture Behavioral of Sev_Seg is

signal Bbus : STD_LOGIC_VECTOR(3 downto 0);

begin

    Display: process (Input, Clk, Bbus) is
    variable digit : unsigned (1 downto 0) := "00";
    begin
        if ( rising_edge(Clk) ) then
            if (digit = "00") then
                        Bbus <= input(3 downto 0);
                        AnBus <= "1110";
            elsif (digit = "01") then
                        Bbus <= input (7 downto 4);
                        AnBus <= "1101";
            elsif (digit = "10") then
                        Bbus <= input (11 downto 8);
                        AnBus <= "1011"; 
            else
                        Bbus <= input(15 downto 12);
                        AnBus <= "0111";                                     
            end if;
        
        digit := digit + 1; -- move to next digit
                    
        case (Bbus) is 
            when "0000" => CaBus <= "00000011"; --0
            when "0001" => CaBus <= "10011111"; --1
            when "0010" => CaBus <= "00100101"; --2
            when "0011" => CaBus <= "00001101"; --3
            when "0100" => CaBus <= "10011001"; --4
            when "0101" => CaBus <= "01001001"; --5
            when "0110" => CaBus <= "01000001"; --6
            when "0111" => CaBus <= "00011111"; --7
            when "1000" => CaBus <= "00000001"; --8
            when "1001" => CaBus <= "00011001"; --9
            when "1010" => CaBus <= "00010001"; --A
            when "1011" => CaBus <= "11000001"; --b
            when "1100" => CaBus <= "01100011"; --C
            when "1101" => CaBus <= "10000101"; --d
            when "1110" => CaBus <= "01100001"; --E
            when "1111" => CaBus <= "01110001"; --F
            when others => CaBus <= "11111111"; --empty
            end case;
        end if;
           
    end process Display;
end Behavioral;
