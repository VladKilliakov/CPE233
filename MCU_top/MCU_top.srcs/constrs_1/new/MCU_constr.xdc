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
