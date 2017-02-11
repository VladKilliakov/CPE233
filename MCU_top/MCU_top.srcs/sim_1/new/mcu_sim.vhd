library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity mcu_sim is
--  Port ( );
end mcu_sim;

architecture Behavioral of mcu_sim is
    component rat_wrapper port(LEDS     : out   STD_LOGIC_VECTOR (7 downto 0);
                               SWITCHES : in    STD_LOGIC_VECTOR (7 downto 0);
                               RST      : in    STD_LOGIC;
                               CLK      : in    STD_LOGIC);
    end component;
    
signal s_clk: std_logic := '1';
signal s_leds, s_switches: std_logic_vector(7 downto 0);    
signal s_rst: std_logic;
    
begin
    UUT: rat_wrapper port map( clk => s_clk,
                               leds => s_leds,
                               switches => s_switches,
                               rst => s_rst);
    process begin                                            
       S_Clk <= not S_Clk;
       wait for 10 ns;                                            
    end process;        
    
    process begin
        wait for 10 ns;
        s_rst <= '0';
        s_switches <= "00000111";
        wait for 400 ns;
        
        s_switches <= "00000011";
        wait for 400 ns;
                               
        s_switches <= "00000100";
        wait for 400 ns;
        
        s_switches <= "00001011";
        wait for 400 ns;
        
        wait;
    end process;
end Behavioral;
