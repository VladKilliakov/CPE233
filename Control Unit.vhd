----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/06/2017 03:14:16 PM
-- Design Name: 
-- Module Name: Control Unit - Behavioral
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

entity Control_Unit is
    Port ( C_FLAG : in STD_LOGIC;
           Z_FLAG : in STD_LOGIC;
           INT : in STD_LOGIC;
           RESET : in STD_LOGIC;
           CLK : in STD_LOGIC;
           OPCODE_HI_5 : in STD_LOGIC;
           OPCODE_LO_2 : in STD_LOGIC;
           I_SET : out STD_LOGIC;
           I_CLR : out STD_LOGIC;
           PC_LD : out STD_LOGIC;
           PC_INC : out STD_LOGIC;
           PC_MUX_SEL : out STD_LOGIC_VECTOR (1 downto 0);
           ALU_OPY_SEL : out STD_LOGIC;
           ALU_SEL : out STD_LOGIC_VECTOR (3 downto 0);
           RF_WR : out STD_LOGIC;
           RF_WR_SEL : out STD_LOGIC_VECTOR (2 downto 0);
           PS_LD : out STD_LOGIC;
           SP_INC : out STD_LOGIC;
           SP_DECR : out STD_LOGIC;
           SCR_WE : out STD_LOGIC;
           SCR_ADDR_SEL : out STD_LOGIC_VECTOR (1 downto 0);
           SCR_DATA_SEL : out STD_LOGIC;
           FLG_C_SET : out STD_LOGIC;
           FLG_C_CLR : out STD_LOGIC;
           FLG_C_LD : out STD_LOGIC;
           FLG_Z_LD : out STD_LOGIC;
           FLG_LD_SEL : out STD_LOGIC;
           FLG_SHAD_LD : out STD_LOGIC;
           RST : out STD_LOGIC;
           IO_STRB : out STD_LOGIC);
end Control_Unit;

architecture Behavioral of Control_Unit is

TYPE state_type is (ST_init, St_fet, ST_exec);
signal PS, NS: state_type;
signal op_code_7 : std_logic_vector(6 downto 0);



begin

state_p : process(CLK, RESET) begin
    if RESET = '1' then
        PS <= ST_init;
    elsif rising_edge(CLK) then
        PS <= NS;
    end if;
end process state_p;

comb_p : process(PS, op_code_7) 
    variable temp : std_logic_vector(26 downto 0);
begin    
    case (PS) is
        when ST_init => NS <= ST_fet;
                       RST <= '1';
        when ST_fet => NS <= ST_exec;
                       PC_inc <= '1';
        when ST_exec => NS <= ST_fet;
        when others => 
 
    end case;
end process;


end Behavioral;
