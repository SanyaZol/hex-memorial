@ECHO OFF
title Ehtray adder :D
color 1f
echo.
echo.
echo ::::    ::::  :::::::::: :::::::: ::::::::::: ::::    :::  ::::::::  
echo +:+:+: :+:+:+ :+:       :+:    :+:    :+:     :+:+:   :+: :+:    :+: 
echo +:+ +:+:+ +:+ +:+       +:+           +:+     :+:+:+  +:+ +:+        
echo +#+  +:+  +#+ :#::+::#  +#++:++#++    +#+     +#+ +:+ +#+ +#+        
echo +#+       +#+ +#+              +#+    +#+     +#+  +#+#+# +#+        
echo #+#       #+# #+#       #+#    #+#    #+#     #+#   #+#+# #+#    #+# 
echo ###       ### ###        ######## ########### ###    ####  ########  
echo.
echo Ehtray adder
echo.
echo This will copy and install ehtray.exe and ehres.dll
echo you already know if you need this or not
echo.
echo But if you don't, it adds an on-screen volume meter like a TV when you use your keyboard's volume buttons.
echo Press enter to continue, or close now to quit.
echo.
echo DO NOT run on Windows XP Media Center Edition (it already has this built-in and this will cause problems)
pause>nul

set eh=%windir%\ehome
taskkill /F /IM ehtray.exe

if exist %eh%\ehtray.exe ren %eh%\ehtray.exe ehtray.exe.mfsbak
if exist %eh%\ehres.dll ren %eh%\ehres.dll ehres.dll.mfsbak


if not exist %eh%\ehtray.exe copy bin\ehtray.exe %eh%
if not exist %eh%\ehres.dll copy bin\ehres.dll %eh%



REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v Ehtray /f /d "%eh%\ehtray.exe"
start %eh%\ehtray.exe

cls
echo.
echo Done!
echo You can reboot if you like, but there is no need. It's effective right now.
echo.
echo Press your keyboard's volume buttons!
pause
exit
