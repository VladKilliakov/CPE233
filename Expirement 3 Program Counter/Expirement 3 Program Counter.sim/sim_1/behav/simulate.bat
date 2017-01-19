@echo off
set xv_path=C:\\Downloads\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xsim top_pc_sim_behav -key {Behavioral:sim_1:Functional:top_pc_sim} -tclbatch top_pc_sim.tcl -view C:/Users/kilvl/Vivado/CPE233/Expirement 3 Program Counter/top_pc_sim_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
