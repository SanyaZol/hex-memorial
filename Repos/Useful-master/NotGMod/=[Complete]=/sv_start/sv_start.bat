@echo off
echo.
set wol=\\192.168.0.7\root\GMod\WOL
set inst=\\192.168.0.7\root\GMod

color 1f
title MFSiNC's Server Starter :D

if exist %wol%\Off goto off
if exist %wol%\On goto on
goto servfail

:on
set status=[ ON ]
goto start

:off
set status=[ OFF ]
goto start

:servfail
set status=[ SERVFAIL ]
goto start


:start
if not exist %windir%\system32\sleep.exe 		copy %inst%\sleep.exe %windir%\system32
if not exist %windir%\system32\wolcmd.exe 		copy %inst%\wolcmd.exe %windir%\system32
if not exist %windir%\system32\psshutdown.exe 	copy %inst%\psshutdown.exe %windir%\system32
cls
echo.
echo MFSiNC's Server Starter :D
echo.
echo ----------------------------------------------------------------
echo [0] Start Without GMod / Do not start the GMod server on boot
echo.
echo [1] Start With GMod / Boot up and start the GMod Server
echo.
echo [B] Boot / Boot with GMod: %status% like last time
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
sleep.exe 1
goto start

:vnc
cd %vnc%
start bin\vncviewer.exe -config "%cd%\bin\Shuttle.vnc"
sleep.exe 1
exit

:0
rmdir /S /Q "%wol%"
mkdir %wol%\Off
cls
echo.
echo Selected: Do not start GMod
echo Executing..
sleep.exe 1
goto next

:1
rmdir /S /Q "%wol%"
mkdir %wol%\On
cls
echo.
echo Selected: Start GMod
echo Executing..
sleep.exe 1
goto next

:b
cls
echo.
echo Selected: Boot like last time
echo Executing..
sleep.exe 1
goto next

:off
cls
echo.
echo Shutting down server.
echo Executing..
sleep.exe 1
psshutdown.exe \\192.168.0.8 -t 5 -f -u Fagballs -p fagballs
goto exit

:next
if exist %wol%\On goto yes
if exist %wol%\Off goto no
echo SERVFAIL.
sleep.exe 2
exit

:yes
echo.
echo Startup script found.
echo Starting up...
echo.
wolcmd.exe GONE 255.255.255.255 255.255.255.255
sleep.exe 1
echo.
echo GMod Server started!
sleep.exe 1
exit

:no
echo.
echo Startup script not found.
echo Starting up PC anyway...
echo.
wolcmd.exe GONE 255.255.255.255 255.255.255.255
sleep.exe 1
echo.
echo GMod Server started! (without script)
sleep.exe 1
exit

:exit
exit




