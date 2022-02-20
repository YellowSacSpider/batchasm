@echo off
setlocal enabledelayedexpansion
 
set /p choice= "File to compile :" 
call %choice%.bat
echo %choice%
set /a arrSIZE=%arrSIZE%-1
for /l %%n in (0,1,%arrSIZE%) do ( 
echo !instr[%%n]!
echo !instr[%%n]!>> %choice%.asm
)
nasm -fwin64 %choice%.asm && gcc %choice%.obj -o %choice%.exe && %choice%
del %choice%.asm
del %choice%.obj

pause >nul