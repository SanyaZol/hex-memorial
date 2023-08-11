@echo off
echo.
set wol=\\192.168.0.7\root\GMod\WOL
set bin=%cd%\bin

color 1f
title MFSiNC's Server Starter :D

if not exist %windir%\system32\sleep.exe set sleep=bin
if not exist %windir%\system32\pssshutdown.exe set pss=bin
if not exist %windir%\system32\wolcmd.exe set wolcmd=bin
if not exist "%programfiles%\RealVNC\VNC4\vncviewer.exe" set vnc=bin

if exist %windir%\system32\sleep.exe set sleep=%windir%\system32
if exist %windir%\system32\pssshutdown.exe set pss=%windir%\system32
if exist %windir%\system32\wolcmd.exe set wolcmd=%windir%\system32
if exist "%programfiles%\RealVNC\VNC4\vncviewer.exe" set vnc=%programfiles%\RealVNC\VNC4

:start
cls
echo.
echo MFSiNC's Server Starter :D
echo.
echo ----------------------------------------------------------------
echo [0] Start Without GMod / Do not auto-start GMod Server on boot
echo.
echo [1] Start With GMod / Boot up and auto-start the GMod Server
echo.
echo [B] Boot / Boot the server like last time
echo.
echo [Q] Quit / Quit this program
echo ----------------------------------------------------------------
echo.
echo -----------------------------------------------
echo [V] Run VNC / Connect to server via VNC
echo -----------------------------------------------
echo.
echo -----------------------------------------------
echo [S] Shutdown Server / Terminates all processes
echo -----------------------------------------------
echo.
echo.
set /p choice="> "
set choice=%choice:~0,1%
if "%choice%"=="0" goto 0
if "%choice%"=="1" goto 1
if "%choice%"=="b" goto b
if "%choice%"=="q" goto exit
if "%choice%"=="s" goto off
if "%choice%"=="v" goto vnc
echo.
echo .ASS ERROR, Try again.
"%sleep%\sleep.exe" 1
goto start

:vnc
cd %vnc%
start vncviewer.exe -config "%bin%\Shuttle.vnc"
"%sleep%\sleep.exe" 1
exit

:0
rmdir /S /Q "%wol%"
mkdir %wol%\no
cls
echo.
echo Selected: Do Not Start
echo Executing..
"%sleep%\sleep.exe" 1
goto next

:1
rmdir /S /Q "%wol%"
mkdir %wol%\yes
cls
echo.
echo Selected: Do Not Start
echo Executing..
"%sleep%\sleep.exe" 1
goto next

:b
cls
echo.
echo Selected: Boot like last time
echo Executing..
"%sleep%\sleep.exe" 1
goto next

:off
cls
echo.
echo Shutting down server.
echo Executing..
"%sleep%\sleep.exe" 1
"%pss%\psshutdown.exe" \\192.168.0.8 -t 2  -f -u Fagballs -p fagballs
goto exit

:next
if exist %wol%\yes goto yes
if exist %wol%\no goto no
echo SERVFAIL.
"%sleep%\sleep.exe" 2
exit

:yes
echo.
echo Startup script found.
echo Starting up...
"%wolcmd%\wolcmd.exe" GONE 255.255.255.255 255.255.255.255
"%sleep%\sleep.exe 2"
echo.
echo GMod Server started!
"%sleep%\sleep.exe 2"
exit

:no
echo.
echo Startup script not found.
echo Starting up PC anyway...
%sleep%\sleep.exe 2
"%wolcmd%\wolcmd.exe" GONE 255.255.255.255 255.255.255.255
"%sleep%\sleep.exe 2"
echo.
echo GMod Server started! (without script)
"%sleep%\sleep.exe 2"
exit

:exit
exit




