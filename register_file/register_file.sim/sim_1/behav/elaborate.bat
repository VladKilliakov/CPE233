@echo off
set xv_path=C:\\Downloads\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto 2d7e7f84ec4d4b8395bef39058851c46 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot reg_sim_behav xil_defaultlib.reg_sim -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
