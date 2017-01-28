----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/25/2017 09:53:34 AM
-- Design Name: 
-- Module Name: reg_sim - Behavioral
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

entity reg_sim is
--  Port ( );
end reg_sim;

architecture Behavioral of reg_sim is
    component register_file port (rf_wr_data: in std_logic_vector(7 downto 0);
                                  adrx, adry: in std_logic_vector(4 downto 0);
                                  rf_wr, clk: in std_logic;
                                  dx_out, dy_out: out std_logic_vector(7 downto 0));
    end component;
                             
signal s_clk: std_logic:= '1';
signal s_rf_wr: std_logic;
signal s_rf_wr_data: std_logic_vector(7 downto 0);
signal s_adrx, s_adry: std_logic_vector(4 downto 0);
signal s_dx_out, s_dy_out: std_logic_vector(7 downto 0);

begin
    UUT: register_file port map (rf_wr_data => s_rf_wr_data,
                                 adrx => s_adrx,
                                 adry => s_adry,
                                 rf_wr => s_rf_wr,
                                 clk => s_clk,
                                 dx_out => s_dx_out,
                                 dy_out => s_dy_out);
                                 
process begin
    s_clk <= not s_clk;
    wait for 10 ns;
end process;

process begin
    wait for 5 ns;
-- Writing data to registers    
    s_rf_wr <= '1';
    s_adrx <= "00000";
    s_adry <= "00001";
    s_rf_wr_data <= x"10";
    wait for 20 ns;
    
    s_adrx <= "00001";
    s_adry <= "00010";
    s_rf_wr_data <= x"20";
    wait for 20 ns;
    
    s_adrx <= "00010";
    s_adry <= "00011";
    s_rf_wr_data <= x"30";
    wait for 20 ns;
    
    s_adrx <= "00011";
    s_adry <= "00100";
    s_rf_wr_data <= x"40";
    wait for 20 ns;
    
 -- Reading data from registers  
    s_rf_wr <= '0';
    s_adrx <= "00000";
    s_adry <= "00001";
    s_rf_wr_data <= x"10";
    wait for 20 ns;
    
    s_adrx <= "00001";
    s_adry <= "00010";
    s_rf_wr_data <= x"20";
    wait for 20 ns;
    
    s_adrx <= "00010";
    s_adry <= "00011";
    s_rf_wr_data <= x"30";
    wait for 20 ns;
    
    s_adrx <= "00011";
    s_adry <= "00100";
    s_rf_wr_data <= x"40";
    wait for 20 ns;

    wait;
end process;                                 
                                
end Behavioral;
