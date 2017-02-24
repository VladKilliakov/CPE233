#switches
set_property PACKAGE_PIN V17 [get_ports {SWITCHES[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SWITCHES[0]}]

set_property PACKAGE_PIN V16 [get_ports {SWITCHES[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SWITCHES[1]}]

set_property PACKAGE_PIN W16 [get_ports {SWITCHES[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SWITCHES[2]}]

set_property PACKAGE_PIN W17 [get_ports {SWITCHES[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SWITCHES[3]}]

set_property PACKAGE_PIN W15 [get_ports {SWITCHES[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SWITCHES[4]}]

set_property PACKAGE_PIN V15 [get_ports {SWITCHES[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SWITCHES[5]}]

set_property PACKAGE_PIN W14 [get_ports {SWITCHES[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SWITCHES[6]}]

set_property PACKAGE_PIN W13 [get_ports {SWITCHES[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SWITCHES[7]}]

#LEDs
set_property PACKAGE_PIN U16 [get_ports {LEDS[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LEDS[0]}]

set_property PACKAGE_PIN E19 [get_ports {LEDS[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LEDS[1]}]

set_property PACKAGE_PIN U19 [get_ports {LEDS[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LEDS[2]}]

set_property PACKAGE_PIN V19 [get_ports {LEDS[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LEDS[3]}]

set_property PACKAGE_PIN W18 [get_ports {LEDS[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LEDS[4]}]

set_property PACKAGE_PIN U15 [get_ports {LEDS[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LEDS[5]}]

set_property PACKAGE_PIN U14 [get_ports {LEDS[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LEDS[6]}]

set_property PACKAGE_PIN V14 [get_ports {LEDS[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LEDS[7]}]

#clock
set_property PACKAGE_PIN W5 [get_ports {CLK}]
set_property IOSTANDARD LVCMOS33 [get_ports {CLK}]
create_clock -add -name sys_clk_pin -period 10 -waveform {0 5} [get_ports {CLK}]

#buttons
set_property PACKAGE_PIN W19 [get_ports {RST}]
set_property IOSTANDARD LVCMOS33 [get_ports {RST}]

#seven segment
set_property PACKAGE_PIN W4 [get_ports {AnBus[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AnBus[0]}]

set_property PACKAGE_PIN U2 [get_ports {AnBus[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AnBus[1]}]

set_property PACKAGE_PIN U4 [get_ports {AnBus[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AnBus[2]}]

set_property PACKAGE_PIN V4 [get_ports {AnBus[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AnBus[3]}]

set_property PACKAGE_PIN V7 [get_ports {CaBus[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {CaBus[0]}]

set_property PACKAGE_PIN U7 [get_ports {CaBus[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {CaBus[1]}]

set_property PACKAGE_PIN V5 [get_ports {CaBus[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {CaBus[2]}]

set_property PACKAGE_PIN U5 [get_ports {CaBus[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {CaBus[3]}]

set_property PACKAGE_PIN V8 [get_ports {CaBus[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {CaBus[4]}]

set_property PACKAGE_PIN U8 [get_ports {CaBus[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {CaBus[5]}]

set_property PACKAGE_PIN W6 [get_ports {CaBus[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {CaBus[6]}]

set_property PACKAGE_PIN W7 [get_ports {CaBus[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {CaBus[7]}]

##rest of the leds
#set_property IOSTANDARD LVCMOS33 [get_ports {Led[8]}]
#set_property PACKAGE_PIN V13 [get_ports {Led[8]}]

#set_property IOSTANDARD LVCMOS33 [get_ports {Led[9]}]
#set_property PACKAGE_PIN V3 [get_ports {Led[9]}]

#set_property IOSTANDARD LVCMOS33 [get_ports {Led[10]}]
#set_property PACKAGE_PIN W3 [get_ports {Led[10]}]

#set_property IOSTANDARD LVCMOS33 [get_ports {Led[11]}]
#set_property PACKAGE_PIN U3 [get_ports {Led[11]}]

#set_property IOSTANDARD LVCMOS33 [get_ports {Led[12]}]
#set_property PACKAGE_PIN P3 [get_ports {Led[12]}]

#set_property IOSTANDARD LVCMOS33 [get_ports {Led[13]}]
#set_property PACKAGE_PIN N3 [get_ports {Led[13]}]

#set_property IOSTANDARD LVCMOS33 [get_ports {Led[14]}]
#set_property PACKAGE_PIN P1 [get_ports {Led[14]}]

#set_property IOSTANDARD LVCMOS33 [get_ports {Led[15]}]
#set_property PACKAGE_PIN L1 [get_ports {Led[15]}]
















