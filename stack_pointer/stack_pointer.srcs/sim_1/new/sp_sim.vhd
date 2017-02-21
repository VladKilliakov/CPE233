----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/15/2017 09:51:00 AM
-- Design Name: 
-- Module Name: sp_sim - Behavioral
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

entity sp_sim is
--  Port ( );
end sp_sim;

architecture Behavioral of sp_sim is
    component stack_pointer port ( rst : in STD_LOGIC;
                                   sp_ld : in STD_LOGIC;
                                   sp_incr: in STD_LOGIC;
                                   sp_decr: in STD_LOGIC;
                                   data_in : in STD_LOGIC_VECTOR (7 downto 0);
                                   clk : in STD_LOGIC;
                                   data_out : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    
signal s_rst, s_sp_ld, s_sp_incr, s_sp_decr: std_logic;
signal s_data_in, s_data_out: std_logic_vector(7 downto 0);
signal s_clk: std_logic := '0';

begin
    UUT: stack_pointer port map (rst => s_rst,
                                 sp_ld => s_sp_ld,
                                 sp_incr => s_sp_incr,
                                 sp_decr => s_sp_decr,
                                 data_in => s_data_in,
                                 data_out => s_data_out,
                                 clk => s_clk);
    
    process begin                                            
        S_Clk <= not S_Clk;
        wait for 10 ns;                                            
    end process;
    
    process begin
     
        s_rst <= '0';
        s_sp_ld <= '0';
        s_sp_incr <= '0';
        s_sp_decr <= '1';
        s_data_in <= "10101010";
        wait for 20 ns;
        
        s_rst <= '0';
        s_sp_ld <= '0';
        s_sp_incr <= '0';
        s_sp_decr <= '1';
        s_data_in <= "10101010";
        wait for 20 ns;
        
        s_rst <= '0';
        s_sp_incr <= '0';
        s_sp_decr <= '1';
        s_data_in <= "10101010";
        wait for 20 ns;
        
        s_rst <= '0';
        s_sp_incr <= '1';
        s_sp_decr <= '0';
        s_data_in <= "10101010";
        wait for 20 ns;
        
        s_rst <= '0';
        s_sp_incr <= '1';
        s_sp_decr <= '0';
        s_data_in <= "10101010";
        wait for 20 ns;
        
        s_rst <= '0';
        s_sp_ld <= '1';
        s_data_in <= "10101010";
        wait for 20 ns;
        
        s_rst <= '1';
        wait for 20 ns;        
    
        wait;
    end process;

end Behavioral;
