@echo off
set remote=\\192.168.0.7\root\GMod
color 1f
title Local Batch Updater
echo.
echo Local Batch Updater.
echo.
echo Update now?
echo.
echo --------
echo [Y] Yes
echo [N] No
echo --------
echo.
set /p choice="> "
set choice=%choice:~0,1%
if "%choice%"=="y" goto yes
if "%choice%"=="n" goto exit


:yes
del sv_start.bat
del choosemap.bat
sleep 1
copy %remote%\sv_start.bat sv_start.bat 
copy %remote%\choosemap.bat choosemap.bat


:exit
exit
 