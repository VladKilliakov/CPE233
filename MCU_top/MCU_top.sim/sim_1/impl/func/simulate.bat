@echo off
set xv_path=C:\\Downloads\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xsim mcu_sim_func_impl -key {Post-Implementation:sim_1:Functional:mcu_sim} -tclbatch mcu_sim.tcl -view C:/Users/kilvl/Vivado/CPE233/MCU_top/mcu_sim_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
