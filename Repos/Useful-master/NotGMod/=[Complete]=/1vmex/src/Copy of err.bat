
@echo off

set ERRORLEVEL=0

bspconv.exe poo1.bsp omg.bsp

if ERRORLEVEL 1 echo error


echo.
echo.
pause
exit
