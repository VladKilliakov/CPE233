----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/25/2017 09:04:22 AM
-- Design Name: 
-- Module Name: register_file - Behavioral
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

entity register_file is
    port (rf_wr_data: in std_logic_vector(7 downto 0);
          adrx, adry: in std_logic_vector(4 downto 0);
          rf_wr, clk: in std_logic;
          dx_out, dy_out: out std_logic_vector(7 downto 0));
          
end register_file;

architecture Behavioral of register_file is

type memory is array(0 to 31) of std_logic_vector(7 downto 0);
signal reg: memory := (others => x"00");

begin
 dx_out <= reg(to_integer(unsigned(adrx)));
 dy_out <= reg(to_integer(unsigned(adry)));
 
 process (clk) begin 
    if rising_edge(clk) then 
        if rf_wr = '1' then
            reg(to_integer(unsigned(adrx))) <= rf_wr_data;
        end if;
    end if;
 end process;

end Behavioral;
