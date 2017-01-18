@echo off
set xv_path=C:\\Downloads\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto fb1be8931cab44318aacd26142bce17d -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot mux_sim_behav xil_defaultlib.mux_sim -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
