----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/13/2017 08:47:50 AM
-- Design Name: 
-- Module Name: PC - Behavioral
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

entity PC is
    Port ( RST : in STD_LOGIC;
           PC_LD : in STD_LOGIC;
           PC_INC : in STD_LOGIC;
           D_IN : in STD_LOGIC_VECTOR (9 downto 0);
           CLK : in STD_LOGIC;
           PC_COUNT : out STD_LOGIC_VECTOR (9 downto 0));
end PC;

architecture Behavioral of PC is

begin
    process(CLK)
    variable count : unsigned(9 downto 0):= "0000000000";
        begin
            if rising_edge(CLK) then
                if RST = '1' then
                    count := "0000000000";
                elsif PC_LD = '1' then
                    count := unsigned(D_IN);     
                elsif PC_INC = '1' then
                     count := count+1;
                end if;
            
            end if;
            PC_COUNT <= std_logic_vector(count);
     end process;
                             
              
                 
end Behavioral;
