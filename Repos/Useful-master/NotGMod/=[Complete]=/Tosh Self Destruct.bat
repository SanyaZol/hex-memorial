@echo off
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

echo.
echo ===========================
echo Shutting down all services
echo ===========================

net stop "Apache2.2"
net stop "FileZilla Server"
net stop "FreeSSHDService"
net stop "Kiwi Syslog Daemon"
net stop "LMIGuardianSvc"
net stop "LMIMaint"
net stop "LogMeIn"
net stop "mysql"
net stop "OOCleverCacheAgent"

echo.
echo ======================
echo Killing all processes
echo ======================

taskkill /IM "TFncKy.exe"
taskkill /IM "TFNF5.exe"
taskkill /IM "Apoint.exe"
taskkill /IM "LogMeInSystray.exe"
taskkill /IM "UnlockerAssistant.exe"
taskkill /IM "ooccctrl.exe"
taskkill /IM "nhc.exe"
taskkill /IM "fdm.exe"
taskkill /IM "peerblock.exe"
taskkill /IM "taskbarshuffle.exe"
taskkill /IM "feedreader.exe"
taskkill /IM "xampp-control.exe"
taskkill /IM "ApntEx.exe"

echo.
echo ===============================================
echo Shutting down all services again, to make sure
echo ===============================================
sleep 2

net stop "Apache2.2"
net stop "FileZilla Server"
net stop "FreeSSHDService"
net stop "Kiwi Syslog Daemon"
net stop "LMIGuardianSvc"
net stop "LMIMaint"
net stop "LogMeIn"
net stop "mysql"
net stop "OOCleverCacheAgent"

echo.
echo ==============
echo and processes
echo ==============

taskkill /IM "TFncKy.exe"
taskkill /IM "TFNF5.exe"
taskkill /IM "Apoint.exe"
taskkill /IM "LogMeInSystray.exe"
taskkill /IM "UnlockerAssistant.exe"
taskkill /IM "ooccctrl.exe"
taskkill /IM "nhc.exe"
taskkill /IM "fdm.exe"
taskkill /IM "peerblock.exe"
taskkill /IM "taskbarshuffle.exe"
taskkill /IM "feedreader.exe"
taskkill /IM "xampp-control.exe"
taskkill /IM "ApntEx.exe"

echo.
echo ==========================
echo one more time, force quit
echo ==========================
sleep 3

taskkill /F /IM "TFncKy.exe"
taskkill /F /IM "TFNF5.exe"
taskkill /F /IM "Apoint.exe"
taskkill /F /IM "LogMeInSystray.exe"
taskkill /F /IM "UnlockerAssistant.exe"
taskkill /F /IM "ooccctrl.exe"
taskkill /F /IM "nhc.exe"
taskkill /F /IM "fdm.exe"
taskkill /F /IM "peerblock.exe"
taskkill /F /IM "taskbarshuffle.exe"
taskkill /F /IM "feedreader.exe"
taskkill /F /IM "xampp-control.exe"
taskkill /F /IM "ApntEx.exe"

color 0a
echo.
echo ===============================
echo All done, shutting down server
echo ===============================
sleep 2
rem shutdown -s -t 3 -c "Self Destruct"
exit










