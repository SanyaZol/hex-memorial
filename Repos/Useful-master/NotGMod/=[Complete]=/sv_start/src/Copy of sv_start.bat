@echo off
echo.
set wol=\\192.168.0.7\root\GMod\WOL

color 1f
title MFSiNC's Server Starter :D

:start
cls
echo.
echo MFSiNC's Server Starter :D
echo.
echo --------------------------------------------
echo [0] Do Not Start / Do not start GMod Server
echo --------------------------------------------
echo.
echo --------------------------------------------
echo [1] Start / Start the GMod Server
echo --------------------------------------------
echo.
echo --------------------------------------------
echo [B] Boot / Boot the server like last time
echo --------------------------------------------
echo.
echo --------------------------------------------
echo [Q] Quit / Quit this program
echo --------------------------------------------
echo.
echo.
set /p choice="> "
set choice=%choice:~0,1%
if "%choice%"=="0" goto 0
if "%choice%"=="1" goto 1
if "%choice%"=="b" goto b
if "%choice%"=="q" goto exit
echo.
echo .ASS ERROR, Try again.
sleep 1
goto start

:0
rmdir /S /Q "%wol%"
mkdir %wol%\no
cls
echo.
echo Selected: Do Not Start
echo Executing..
sleep 1
goto next

:1
rmdir /S /Q "%wol%"
mkdir %wol%\yes
cls
echo.
echo Selected: Do Not Start
echo Executing..
sleep 1
goto next

:b
cls
echo.
echo Selected: Boot like last time
echo Executing..
sleep 1
goto next


:next
if exist %wol%\yes goto yes
if exist %wol%\no goto no
echo SERVFAIL.
sleep 2
exit

:yes
echo.
echo Startup script found.
echo Starting up...
wolcmd GONE 255.255.255.255 255.255.255.255
::sleep 30
echo.
echo GMod Server started!
sleep 2
exit

:no
echo.
echo Startup script not found.
echo Starting up PC anyway...
sleep 2
wolcmd GONE 255.255.255.255 255.255.255.255
::sleep 30
echo.
echo GMod Server started! (without script)
sleep 2
exit

:exit
exit




