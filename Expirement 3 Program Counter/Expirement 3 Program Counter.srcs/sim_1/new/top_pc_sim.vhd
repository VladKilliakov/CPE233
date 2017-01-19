----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/18/2017 03:14:28 PM
-- Design Name: 
-- Module Name: top_pc_sim - Behavioral
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

entity top_pc_sim is
--  Port ( );
end top_pc_sim;

architecture Behavioral of top_pc_sim is
    component program_counter_top port(MUX_SEL: in std_logic_vector(1 downto 0);
                                       TOP_RST, TOP_PC_LD, TOP_PC_INC, top_clk: in std_logic;
                                       FROM_STACK: in std_logic_vector(9 downto 0);
                                       FROM_IMMED: in std_logic_vector(9 downto 0);
                                       INSTR: out std_logic_vector(17 downto 0)); 
    end component;
    
    signal s_clk: std_logic := '1';
    signal sel: std_logic_vector(1 downto 0);
    signal s_top_rst, s_top_pc_ld, s_top_pc_inc : std_logic;
    signal s_from_stack, s_from_immed: std_logic_vector(9 downto 0);
    signal s_instr: std_logic_vector(17 downto 0);
begin
    UUT: program_counter_top port map ( top_clk => S_Clk,
                                        mux_sel => sel,
                                        top_rst => s_top_rst,
                                        top_pc_ld => s_top_pc_ld,
                                        top_pc_inc => s_top_pc_inc,
                                        from_stack => s_from_stack,
                                        from_immed => s_from_immed,
                                        instr => s_instr);
    process begin                                            
        S_Clk <= not S_Clk;
        wait for 10 ns;                                            
    end process;

    process begin
        --wait for 5 ns;
        sel <= "00";
        s_top_pc_ld <= '1';
        s_top_pc_inc <= '0';
        s_top_rst <= '0';
        s_from_immed <= "0000010000";
        s_from_stack <= "1111100000";
        wait for 20 ns;
        
        s_top_pc_ld <= '0';
        s_top_pc_inc <= '1';
        s_top_rst <= '0';
        s_from_immed <= "0000000000";
        s_from_stack <= "1111100000";
        wait for 20 ns;
        
        s_top_pc_ld <= '0';
        s_top_pc_inc <= '1';
        s_top_rst <= '0';
        s_from_immed <= "0000011111";
        s_from_stack <= "1111100000";
        wait for 20 ns;
        
        s_top_pc_ld <= '0';
        s_top_pc_inc <= '1';
        s_top_rst <= '0';
        s_from_immed <= "0000011111";
        s_from_stack <= "1111100000";
        wait for 20 ns;
        
        sel <= "01";
        s_top_pc_ld <= '1';
        s_top_pc_inc <= '1';
        s_top_rst <= '0';
        s_from_immed <= "0000011111";
        s_from_stack <= "1111100000";
        wait for 20 ns;
        
--        sel <= "11";
        s_top_pc_ld <= '1';
        s_top_pc_inc <= '0';
        s_top_rst <= '0';
        s_from_immed <= "0000011111";
        s_from_stack <= "1111100000";
        wait for 20 ns;
        
        s_top_pc_ld <= '1';
        s_top_pc_inc <= '1';
        s_top_rst <= '0';
        s_from_immed <= "0000011111";
        s_from_stack <= "1111100000";
        wait for 20 ns;
        
        s_top_pc_ld <= '1';
        s_top_pc_inc <= '1';
        s_top_rst <= '0';
        s_from_immed <= "0000011111";
        s_from_stack <= "1111100000";
        wait for 20 ns;
        
        s_top_pc_ld <= '1';
        s_top_pc_inc <= '1';
        s_top_rst <= '1';
        s_from_immed <= "0000011111";
        s_from_stack <= "1111100000";
        wait for 20 ns;
        
        sel <= "01";
        s_top_pc_ld <= '1';
        s_top_pc_inc <= '1';
        s_top_rst <= '0';
        s_from_immed <= "0000011111";
        s_from_stack <= "0000010001";
        wait for 20 ns;
        
        s_top_pc_ld <= '0';
        s_top_pc_inc <= '1';
        s_top_rst <= '0';
        s_from_immed <= "0000011111";
        s_from_stack <= "1111100000";
        wait for 20 ns;
        
        s_top_pc_ld <= '0';
        s_top_pc_inc <= '1';
        s_top_rst <= '0';
        s_from_immed <= "0000011111";
        s_from_stack <= "1111100000";
        wait for 20 ns;
        
        s_top_pc_ld <= '0';
        s_top_pc_inc <= '1';
        s_top_rst <= '0';
        s_from_immed <= "0000011111";
        s_from_stack <= "1111100000";
        wait for 20 ns;
        
        sel <= "10";
        s_top_pc_ld <= '1';
        s_top_pc_inc <= '0';
        s_top_rst <= '1';
        s_from_immed <= "0000011111";
        s_from_stack <= "1111100000";
        wait for 20 ns;
        
        s_top_pc_ld <= '0';
        s_top_pc_inc <= '0';
        s_top_rst <= '1';
        s_from_immed <= "0000011111";
        s_from_stack <= "1111100000";
        wait for 20 ns;
        
        s_top_pc_ld <= '0';
        s_top_pc_inc <= '0';
        s_top_rst <= '1';
        s_from_immed <= "0000011111";
        s_from_stack <= "1111100000";
        wait for 20 ns;
        
        wait;
    end process;
end Behavioral;
