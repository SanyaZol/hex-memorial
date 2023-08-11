@echo off
echo.
set inst=\\192.168.0.7\root\GMod

color 1f
title MFSiNC's PC Starter :D

:start
if not exist %windir%\system32\sleep.exe 		copy %inst%\sleep.exe %windir%\system32
if not exist %windir%\system32\wolcmd.exe 		copy %inst%\wolcmd.exe %windir%\system32
if not exist %windir%\system32\psshutdown.exe 	copy %inst%\psshutdown.exe %windir%\system32
cls
echo.
echo MFSiNC's PC Starter :D
echo.
echo ----------------------------------------------------------------
echo [1] Start / MiNGEBAG V1
echo.
echo [2] Start / Dan
echo.
echo [3] Start / Dave
echo.
echo [4] Start / Shuttle
echo.
echo [5] Start / Office
echo.
echo [Q] Quit  / Quit this program
echo ----------------------------------------------------------------
echo.
set /p choice="> "
set choice=%choice:~0,1%
if "%choice%"=="1" goto mingebag
if "%choice%"=="2" goto dan
if "%choice%"=="3" goto dave
if "%choice%"=="4" goto shuttle
if "%choice%"=="5" goto office
if "%choice%"=="q" goto exit
echo.
echo .ASS ERROR, Try again.
sleep.exe 1
goto start

:dan
echo.
echo Starting Dan
echo.
wolcmd.exe GONE 255.255.255.255 255.255.255.255
sleep.exe 1
echo.
echo Dan started!
sleep.exe 1
goto exit

:mingebag
echo.
echo Starting MiNGEBAG V1
echo.
wolcmd.exe GONE 255.255.255.255 255.255.255.255
sleep.exe 1
echo.
echo MiNGEBAG V1 started!
sleep.exe 1
goto exit

:dave
echo.
echo Starting Dave
echo.
wolcmd.exe GONE 255.255.255.255 255.255.255.255
sleep.exe 1
echo.
echo Dave started!
sleep.exe 1
goto exit

:office
echo.
echo Starting Office
echo.
wolcmd.exe GONE 255.255.255.255 255.255.255.255
sleep.exe 1
echo.
echo Office started!
sleep.exe 1
goto exit

:shuttle
echo.
echo Starting Shuttle
echo.
wolcmd.exe GONE 255.255.255.255 255.255.255.255
sleep.exe 1
echo.
echo Shuttle started!
sleep.exe 1
goto exit

:exit
exit




