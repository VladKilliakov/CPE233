@echo off
set xv_path=C:\\Downloads\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto f711c5f0f155436d8f40cf6d677b2a4b -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot alu_sim_behav xil_defaultlib.alu_sim -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
