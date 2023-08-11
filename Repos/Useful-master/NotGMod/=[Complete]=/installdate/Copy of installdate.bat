@echo off
title MFSiNC's System Install Date Getter!!
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
echo MFSiNC's System Install Date Getter!
echo.
echo.
echo This will print the system install date on the screen
echo Also it will save a text file in the current directory
echo.
echo Close now or press enter to continue.
pause>nul


systeminfo | find /i "install date" >> %temp%\installdatetemp.txt


cls
echo.
echo ===================================================
systeminfo | find /i "install date"
echo ===================================================
echo.
echo Press any key to continue and create text file . . .
pause>nul
echo =================================================== >> OSinstalldate.txt
systeminfo | find /i "install date" >> OSinstalldate.txt
echo =================================================== >> OSinstalldate.txt






