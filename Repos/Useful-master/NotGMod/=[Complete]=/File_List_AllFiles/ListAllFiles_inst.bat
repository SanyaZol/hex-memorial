@ECHO OFF
title "List All Files" Installer :D
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
echo "List All Files" Installer
echo.
echo This will add an option to all windows folders called "List All Files"
echo you already know if you need this or not
echo.
echo When chosen it saves a list of the folder's contents and subdirs to a text file
echo (AllFiles.txt) in the folder.
echo It also displayes AllFiles.txt in notepad
echo.
echo Press enter to continue, or close now to quit.
pause>nul

if not exist %windir%\system32\allfilelist.bat goto inst

goto fail

:inst
copy bin\allfilelist.bat %windir%\system32
regedit /s bin\allfilelist.reg
goto dun

:dun
cls
echo.
echo Done
echo.
pause
exit

:fail
cls
echo. Already installed dumbass.
echo.
pause
exit













