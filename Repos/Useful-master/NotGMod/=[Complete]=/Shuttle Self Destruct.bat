@echo off
set srcds=%systemdrive%\srcds
title MFSiNC's Self-Destruct :D
color 0c

echo.
echo ::::    ::::  :::::::::: :::::::: ::::::::::: ::::    :::  ::::::::  
echo +:+:+: :+:+:+ :+:       :+:    :+:    :+:     :+:+:   :+: :+:    :+: 
echo +:+ +:+:+ +:+ +:+       +:+           +:+     :+:+:+  +:+ +:+        
echo +#+  +:+  +#+ :#::+::#  +#++:++#++    +#+     +#+ +:+ +#+ +#+        
echo +#+       +#+ +#+              +#+    +#+     +#+  +#+#+# +#+        
echo #+#       #+# #+#       #+#    #+#    #+#     #+#   #+#+# #+#    #+# 
echo ###       ### ###        ######## ########### ###    ####  ########  
echo.
echo MFSiNC's Self-Destruct
echo.
echo Don't close this program, it'l close by itsself when its ready.
echo.
pause
color 0e

shutdown -s -t 35 -c "Self Destruct"

echo.
echo ===========================
echo Shutting down all services
echo ===========================

net stop "FileZilla Server"
net stop "DynDNS Updater"


echo.
echo ======================
echo Killing all processes
echo ======================

taskkill /IM "SOUNDMAN.exe"
taskkill /IM "atiptaxx.exe"
taskkill /IM "shicoxp.exe"
taskkill /IM "TimeSync.exe"
taskkill /IM "UnlockerAssistant.exe"
taskkill /IM "taskbarshuffle.exe"
taskkill /IM "OpenDNSUpdater.exe"
taskkill /IM "DynTray.exe"
taskkill /IM "Dropbox.exe"
taskkill /IM "PTFBPro.exe"
taskkill /IM "srcdsfpsboost.exe"

echo.
echo ===============================================
echo Shutting down all services again, to make sure
echo ===============================================
sleep 2

net stop "FileZilla Server"
net stop "DynDNS Updater"

echo.
echo ==============
echo and processes
echo ==============

taskkill /IM "SOUNDMAN.exe"
taskkill /IM "atiptaxx.exe"
taskkill /IM "shicoxp.exe"
taskkill /IM "TimeSync.exe"
taskkill /IM "UnlockerAssistant.exe"
taskkill /IM "taskbarshuffle.exe"
taskkill /IM "OpenDNSUpdater.exe"
taskkill /IM "DynTray.exe"
taskkill /IM "Dropbox.exe"
taskkill /IM "PTFBPro.exe"
taskkill /IM "srcdsfpsboost.exe"


echo.
echo ==========================
echo one more time, force quit
echo ==========================
sleep 3

taskkill /F /IM "SOUNDMAN.exe"
taskkill /F /IM "atiptaxx.exe"
taskkill /F /IM "shicoxp.exe"
taskkill /F /IM "TimeSync.exe"
taskkill /F /IM "UnlockerAssistant.exe"
taskkill /F /IM "taskbarshuffle.exe"
taskkill /F /IM "OpenDNSUpdater.exe"
taskkill /F /IM "DynTray.exe"
taskkill /F /IM "Dropbox.exe"
taskkill /F /IM "PTFBPro.exe"
taskkill /F /IM "srcdsfpsboost.exe"

echo.
echo ====================
echo Shutting down SRCDS
echo ====================

"%srcds%\clircon.exe" -P"poo" -a127.0.0.1 -p27015 shutdown

color 0a
echo.
echo =========
echo All done
echo =========
exit
taskkill /F /IM "cmd.exe"











