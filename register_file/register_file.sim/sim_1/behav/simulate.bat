@echo off
set xv_path=C:\\Downloads\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xsim reg_sim_behav -key {Behavioral:sim_1:Functional:reg_sim} -tclbatch reg_sim.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
