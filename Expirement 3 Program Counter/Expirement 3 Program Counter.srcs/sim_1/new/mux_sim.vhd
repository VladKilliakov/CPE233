----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/13/2017 09:22:08 AM
-- Design Name: 
-- Module Name: mux_sim - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux_sim is
--  Port ( );
end mux_sim;

architecture Behavioral of mux_sim is
    component MUX
    port (I0: in std_logic_vector(9 downto 0);
            I1: in std_logic_vector(9 downto 0);
            Sel: in std_logic_vector(1 downto 0);
            Output: out std_logic_vector(9 downto 0));
    end component;

signal s_I0, s_I1, s_Output: std_logic_vector(9 downto 0);
signal s_Sel: std_logic_vector(1 downto 0);

begin
    UUT: MUX port map (I0 => s_I0,
                       I1 => s_I1,
                       Sel => s_Sel,
                       Output => s_Output);

    process begin
        s_I0 <= "0000001111";
        s_I1 <= "0101010101";
        s_Sel <= "00";
        wait for 10 ns;
        
        s_I0 <= "0000001111";
        s_I1 <= "0101010101";
        s_Sel <= "01";
        wait for 10 ns;
        
        s_I0 <= "0000001111";
        s_I1 <= "0101010101";
        s_Sel <= "10";
        wait for 10 ns;
        
        s_I0 <= "0000001111";
        s_I1 <= "0101010101";
        s_Sel <= "11";
        wait for 10 ns;
        
        wait;
    end process;
end Behavioral;
