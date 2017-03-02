----------------------------------------------------------------------------------
-- Company:  RAT Technologies (a subdivision of Cal Poly CENG)
-- Engineer:  Various RAT rats
--
-- Create Date:    02/03/2017
-- Module Name:    RAT_wrapper - Behavioral
-- Target Devices:  Basys3
-- Description: Wrapper for RAT CPU. This model provides a template to interfaces
--    the RAT CPU to the Basys3 development board.
--
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RAT_wrapper is
    Port ( LEDS     : out   STD_LOGIC_VECTOR (7 downto 0);
           CaBus  : out   STD_LOGIC_VECTOR (7 downto 0);
           AnBus  : out STD_LOGIC_VECTOR (3 downto 0);
           SWITCHES : in    STD_LOGIC_VECTOR (7 downto 0);
           INT      : in    STD_LOGIC;
           RST      : in    STD_LOGIC;
           CLK      : in    STD_LOGIC);
end RAT_wrapper;

architecture Behavioral of RAT_wrapper is

   -- INPUT PORT IDS -------------------------------------------------------------
   -- Right now, the only possible inputs are the switches
   -- In future labs you can add more port IDs, and you'll have
   -- to add constants here for the mux below
   CONSTANT SWITCHES_ID : STD_LOGIC_VECTOR (7 downto 0) := X"20";
   -------------------------------------------------------------------------------
   
   -------------------------------------------------------------------------------
   -- OUTPUT PORT IDS ------------------------------------------------------------
   -- In future labs you can add more port IDs
   CONSTANT LEDS_ID       : STD_LOGIC_VECTOR (7 downto 0) := X"40";
   CONSTANT SEV_SEG_ID    : STD_LOGIC_VECTOR (7 downto 0) := X"81";
   -------------------------------------------------------------------------------

   -- Declare RAT_CPU ------------------------------------------------------------
   component RAT_CPU
       Port ( IN_PORT  : in  STD_LOGIC_VECTOR (7 downto 0);
              OUT_PORT : out STD_LOGIC_VECTOR (7 downto 0);
              PORT_ID  : out STD_LOGIC_VECTOR (7 downto 0);
              IO_STRB  : out STD_LOGIC;
              RESET    : in  STD_LOGIC;
              INT   : in  STD_LOGIC;
              CLK      : in  STD_LOGIC);
   end component RAT_CPU;
   -------------------------------------------------------------------------------
   
   -- Declare SEV_SEG
   component SEV_SEG
       Port ( Clk : in STD_LOGIC;
              Input : in STD_LOGIC_VECTOR (15 downto 0);
              AnBus : out STD_LOGIC_VECTOR (3 downto 0);
              CaBus : out STD_LOGIC_VECTOR (7 downto 0));
   end component SEV_SEG;
   
   -- Declare Debouncer
   component db_1shot_FSM
        Port ( A    : in STD_LOGIC;
              CLK  : in STD_LOGIC;
              A_DB : out STD_LOGIC);
   end component db_1shot_FSM; 
   
   -- Signals for connecting RAT_CPU to RAT_wrapper -------------------------------
   signal s_input_port  : std_logic_vector (7 downto 0);
   signal s_output_port : std_logic_vector (7 downto 0);
   signal s_port_id     : std_logic_vector (7 downto 0);
   signal s_load        : std_logic;
   signal s_clk_sig     : std_logic := '0';
   signal s_disp_clk_sig    : std_logic := '0';
   signal s_interrupt   : std_logic;
   
   -- Register definitions for output devices ------------------------------------
   -- add signals for any added outputs
   signal r_LEDS        : std_logic_vector (7 downto 0);
   signal r_SEV_SEG     : std_logic_vector (15 downto 0);
   signal r_sev_seg_decimal: std_logic_vector (15 downto 0);
   -------------------------------------------------------------------------------

begin
 
   -- General Clock Divider Process ------------------------------------------------------
   clkdiv: process(CLK)
    begin
        if RISING_EDGE(CLK) then
            s_clk_sig <= NOT s_clk_sig;
        end if;
    end process clkdiv;
   -------------------------------------------------------------------------------
   
   -- Display Clock Divider Process
   disp_clk_div: process(CLK)
   variable disp_counter : unsigned(31 downto 0) := x"00000000";
   begin
        if RISING_EDGE(CLK) then
            disp_counter := disp_counter + 1;
            if (std_logic_vector(disp_counter) = std_logic_vector(to_unsigned(200000, 32))) then
                            disp_counter := x"00000000";
                            s_disp_clk_sig <= NOT s_disp_clk_sig;
            end if;    
        end if;
   end process disp_clk_div;
   
   -- Convert hex to decimal
   hex_to_decimal: process(r_sev_seg)
   begin 
        case r_sev_seg is
            when x"0000" => r_sev_seg_decimal <= x"0000";
            when x"0001" => r_sev_seg_decimal <= x"0001";
            when x"0002" => r_sev_seg_decimal <= x"0002";
            when x"0003" => r_sev_seg_decimal <= x"0003";
            when x"0004" => r_sev_seg_decimal <= x"0004";
            when x"0005" => r_sev_seg_decimal <= x"0005";
            when x"0006" => r_sev_seg_decimal <= x"0006";
            when x"0007" => r_sev_seg_decimal <= x"0007";
            when x"0008" => r_sev_seg_decimal <= x"0008";
            when x"0009" => r_sev_seg_decimal <= x"0009";
            when x"000a" => r_sev_seg_decimal <= x"0010";
            when x"000b" => r_sev_seg_decimal <= x"0011";
            when x"000c" => r_sev_seg_decimal <= x"0012";
            when x"000d" => r_sev_seg_decimal <= x"0013";
            when x"000e" => r_sev_seg_decimal <= x"0014";
            when x"000f" => r_sev_seg_decimal <= x"0015";
            when x"00010" => r_sev_seg_decimal <= x"0016";
            when x"0011" => r_sev_seg_decimal <= x"0017";
            when x"0012" => r_sev_seg_decimal <= x"0018";
            when x"0013" => r_sev_seg_decimal <= x"0019";
            when x"0014" => r_sev_seg_decimal <= x"0020";
            when others => r_sev_seg_decimal <= r_sev_seg;
            end case;
   end process hex_to_decimal;
   
   
   -- Instantiate RAT_CPU --------------------------------------------------------
   CPU: RAT_CPU
   port map(  IN_PORT  => s_input_port,
              OUT_PORT => s_output_port,
              PORT_ID  => s_port_id,
              RESET    => RST,
              IO_STRB  => s_load,
              INT   => s_interrupt,
              CLK      => s_clk_sig);
   -------------------------------------------------------------------------------

   -- Instantiates SEV_SEG
   sev_seg_part: sev_seg
   port map (clk => s_disp_clk_sig,
             input => r_sev_seg_decimal,
             AnBus => AnBus,
             CaBus => CaBus);

   -- Instantiates db_1shot_FSM
   db_1shot_FSM_part: db_1shot_FSM
   port map (clk => s_clk_sig,
             A => int,
             A_DB => s_interrupt);
             
   -------------------------------------------------------------------------------
   -- MUX for selecting what input to read ---------------------------------------
   -- add conditions and connections for any added PORT IDs
   -------------------------------------------------------------------------------
   inputs: process(s_port_id, SWITCHES)
   begin
      if (s_port_id = SWITCHES_ID) then
         s_input_port <= SWITCHES;
      else
         s_input_port <= x"00";
      end if;
   end process inputs;
   -------------------------------------------------------------------------------


   -------------------------------------------------------------------------------
   -- MUX for updating output registers ------------------------------------------
   -- Register updates depend on rising clock edge and asserted load signal
   -- add conditions and connections for any added PORT IDs
   -------------------------------------------------------------------------------
   outputs: process(CLK)
   begin
      if (rising_edge(CLK)) then
         if (s_load = '1') then
           
            -- the register definition for the LEDS
            if (s_port_id = LEDS_ID) then
               r_LEDS <= s_output_port;
            elsif (s_port_id = SEV_SEG_ID) then
               r_SEV_SEG <= "00000000" & s_output_port;
            end if;
           
         end if;
      end if;
   end process outputs;
   -------------------------------------------------------------------------------
              
              
   -- Register Interface Assignments ---------------------------------------------
   -- add all outputs that you added to this design
   LEDS <= r_LEDS;

end Behavioral;