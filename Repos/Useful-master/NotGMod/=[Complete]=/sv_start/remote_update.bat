@echo off
set remote=\\192.168.0.7\root\GMod
color 1f
title Remote Batch Updater
echo.
echo Remote Batch Updater.
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
del %remote%\sv_start.bat
del %remote%\choosemap.bat
sleep 1
copy sv_start.bat %remote%\sv_start.bat
copy choosemap.bat %remote%\choosemap.bat




:exit
exit
 