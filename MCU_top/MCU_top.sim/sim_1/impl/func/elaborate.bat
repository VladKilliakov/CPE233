@echo off
set xv_path=C:\\Downloads\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto 676a67a6474d47c9ad9d4329ccccd2fa -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot mcu_sim_func_impl xil_defaultlib.mcu_sim -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
