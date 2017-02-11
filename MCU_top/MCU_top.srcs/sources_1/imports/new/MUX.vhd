----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/11/2017 10:00:55 AM
-- Design Name: 
-- Module Name: MUX - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX is
  port (I0: in std_logic_vector(9 downto 0);
        I1: in std_logic_vector(9 downto 0);
        Sel: in std_logic_vector(1 downto 0);
        Output: out std_logic_vector(9 downto 0));
end MUX;

architecture Behavioral of MUX is
    begin 
    process(Sel,I0,I1)
        begin
        case Sel is
            when "00" => Output <= I0;
            when "01" => Output <= I1;
            when "10" => Output <= "1111111111";
            when "11" => Output <= "0000000000";
            when others => Output <= "0000000000";
        end case;  
    end process;
end Behavioral;
