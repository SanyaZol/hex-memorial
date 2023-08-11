@echo off
title MFSiNC's DemoPC Starter-Shutdowner :D
color 0c

rem ----------=====[CONFIG]=====----------
set ip=192.168.0.3
set sub=255.255.255.255
set mac=000D61C5A91F
set mpc=mplayerc.exe
set usr=HeX
set pwd=fagballs
set tts=5
rem ----------=====[CONFIG]=====----------


echo.
echo ::::    ::::  :::::::::: :::::::: ::::::::::: ::::    :::  ::::::::  
echo +:+:+: :+:+:+ :+:       :+:    :+:    :+:     :+:+:   :+: :+:    :+: 
echo +:+ +:+:+ +:+ +:+       +:+           +:+     :+:+:+  +:+ +:+        
echo +#+  +:+  +#+ :#::+::#  +#++:++#++    +#+     +#+ +:+ +#+ +#+        
echo +#+       +#+ +#+              +#+    +#+     +#+  +#+#+# +#+        
echo #+#       #+# #+#       #+#    #+#    #+#     #+#   #+#+# #+#    #+# 
echo ###       ### ###        ######## ########### ###    ####  ########  
echo.
echo MFSiNC's DemoPC Starter-Shutdowner
echo.
echo Don't close this program, it'l close by itsself when its ready.
echo.
bin\sleep 1


if not exist bin\sleep.exe goto epicfail
if not exist bin\WolCmd.exe goto epicfail
if not exist bin\psshutdown.exe goto epicfail
if not exist bin\pskill.exe goto epicfail
if not exist "%cd%\DemoPC.Starter.Shutdowner-MFSiNC.bat" goto epicfail

if /i "%1"=="/start" goto start
if /i "%1"=="/stop" goto stop
if /i "%1"=="/?" goto help
if /i "%1"=="" goto help


:start
color 0e
echo Checking target...
ping %ip% -n 2 -w 100>nul
if ERRORLEVEL 1 goto ah
goto itson
:ah
bin\wolcmd.exe %mac% %sub% %sub%>nul
bin\sleep.exe 1
set wat=[Startup]
goto walmart


:stop
color 0e
echo Checking target..
ping %ip% -n 2 -w 100>nul
if ERRORLEVEL 1 goto itsoff
echo.
echo Killing media player..
bin\pskill.exe \\%ip% -u %usr% -p %pwd% %mpc%
sleep 1
bin\psshutdown.exe \\%ip% -t %tts% -f -u %usr% -p %pwd%
bin\sleep.exe 1
set wat=[Shutdown]
goto walmart


:walmart
color 0a
echo %wat%
echo.
echo ==================
echo    On it's way
echo ==================
bin\sleep 2
exit



:itsoff
cls
color 0c
echo.
echo Fail, the pc is already off :(
echo.
echo (Or not responding to pings)
echo.
bin\sleep 3
exit

:itson
cls
color 0c
echo.
echo Fail, the pc is already running :(
echo.
bin\sleep 3
exit


:help
echo I can start or shutdown a pc over your LAN.
echo.
echo Use like: DemoPC.Starter.Shutdowner-MFSiNC.bat [/start] [/stop]
echo ----------------------------------------------------------------
echo.
echo  /start   -   Boot the pc
echo  /stop    -   Shutdown the pc
echo.
echo NOTE: You must edit this file's config settings at line #5 for this to work.
echo.
pause
color
goto EOF

:epicfail
cls
echo.
echo Epic fail :(
if not exist bin\sleep.exe echo bin\sleep.exe is missing
if not exist bin\WolCmd.exe echo bin\WolCmd.exe is missing
if not exist bin\psshutdown.exe echo bin\psshutdown.exe is missing
if not exist bin\pskill.exe echo bin\pskill.exe is missing
echo.
pause
exit

















