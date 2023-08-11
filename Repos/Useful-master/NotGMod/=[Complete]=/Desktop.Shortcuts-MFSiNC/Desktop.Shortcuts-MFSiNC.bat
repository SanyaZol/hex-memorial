@echo off
title MFSiNC's Desktop Shortcuts installer :D
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
echo MFSiNC's Desktop Shortcuts installer
echo.
echo Don't close this program, it'l close by itsself when its ready.
echo.
pause

if not exist %windir%\system32\sleep.exe copy bin\sleep.exe %windir%\system32>nul

color 0e
echo.
echo ==================
echo Installin' now :D
echo ==================

bin\shortcut.exe /f:"%userprofile%\Desktop\Movies.lnk" /a:c /t:"\\192.168.0.7\PUBLIC\movies">nul
sleep 1
bin\shortcut.exe /f:"%userprofile%\Desktop\Documentaries.lnk" /a:c /t:"\\192.168.0.7\PUBLIC\movies\Documentaries">nul
sleep 1
bin\shortcut.exe /f:"%userprofile%\Desktop\TV Series.lnk" /a:c /t:"\\192.168.0.7\PUBLIC\movies\TV Series">nul
sleep 1

color 0a
echo.
echo =========
echo All done
echo =========
sleep 2
exit
