library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity mcu_sim is
--  Port ( );
end mcu_sim;

architecture Behavioral of mcu_sim is
    component rat_wrapper port(LEDS     : out   STD_LOGIC_VECTOR (7 downto 0);
                               INT      : in    STD_LOGIC;
                               SWITCHES : in    STD_LOGIC_VECTOR (7 downto 0);
                               RST      : in    STD_LOGIC;
                               CLK      : in    STD_LOGIC);
    end component;
    
signal s_clk: std_logic := '1';
signal s_leds, s_switches: std_logic_vector(7 downto 0);    
signal s_rst, s_int: std_logic;
    
begin
    UUT: rat_wrapper port map( clk => s_clk,
                               leds => s_leds,
                               int => s_int,
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
        wait for 1980 ns;
        s_int <= '1';
        
        wait for 1000 ns;
        s_int <= '0';
        wait for 3500 ns;
        s_int <= '1';
        
        wait for 1000 ns;
        s_int <= '0';
        wait for 3500 ns;
        s_int <= '1';
        
        wait for 1000 ns;
        s_int <= '0';
        wait for 3500 ns;
        s_int <= '1';
        
        wait for 1000 ns;
        s_int <= '0';
        wait for 3500 ns;
        s_int <= '1';
        
        wait for 1000 ns;
        s_int <= '0';
        wait for 3500 ns;
        s_int <= '1';
        
        wait for 1000 ns;
        s_int <= '0';
        wait for 3500 ns;
        s_int <= '1';
        
        
        wait;
    end process;
    
end Behavioral;
