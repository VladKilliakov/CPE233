----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/18/2017 09:09:57 AM
-- Design Name: 
-- Module Name: Program_counter_top - Behavioral
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

entity Program_counter_top is
    port (MUX_SEL: in std_logic_vector(1 downto 0);
          TOP_RST, TOP_PC_LD, TOP_PC_INC, top_clk: in std_logic;
          FROM_STACK: in std_logic_vector(9 downto 0);
          FROM_IMMED: in std_logic_vector(9 downto 0);
          PC_COUNT_INSIDE: out std_logic_vector(9 downto 0);
          INSTR: out std_logic_vector(17 downto 0));       
end Program_counter_top;

architecture Behavioral of Program_counter_top is
    component PC port ( RST : in STD_LOGIC;
                        PC_LD : in STD_LOGIC;
                        PC_INC : in STD_LOGIC;
                        D_IN : in STD_LOGIC_VECTOR (9 downto 0);
                        CLK : in STD_LOGIC;
                        PC_COUNT : out STD_LOGIC_VECTOR (9 downto 0));                          
    end component;
    
    component MUX port (I0: in std_logic_vector(9 downto 0);
                        I1: in std_logic_vector(9 downto 0);
                        Sel: in std_logic_vector(1 downto 0);
                        Output: out std_logic_vector(9 downto 0));
    end component;
    
    component prog_rom port (ADDRESS : in std_logic_vector(9 downto 0); 
                             INSTRUCTION : out std_logic_vector(17 downto 0); 
                             CLK : in std_logic);
    end component;
    
signal s_d_in: std_logic_vector(9 downto 0) := "0000000000";    
signal s_pc_count: std_logic_vector(9 downto 0) := "0000000000";
begin
    MUX_part: MUX port map(I0 => FROM_IMMED, I1 => FROM_STACK, SEL => MUX_SEL, Output => s_d_in);
    PC_part: PC port map(rst => top_rst, pc_ld => top_pc_ld, pc_inc => top_pc_inc, d_in => s_d_in, clk => top_clk, 
        pc_count => s_pc_count);
    prog_rom_part: prog_rom port map(address => s_pc_count, clk => top_clk, instruction => instr);
    pc_count_inside <= s_pc_count;

end Behavioral;
