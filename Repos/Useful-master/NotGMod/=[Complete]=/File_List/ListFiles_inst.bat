@ECHO OFF
title "List Files" Installer :D
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
echo "List Files" Installer
echo.
echo This will add an option to all windows folders called "List Files"
echo you already know if you need this or not
echo.
echo When chosen it saves a list of the folder's contents to a text file
echo (FileList.txt) in the folder.
echo It also displayes FileList.txt
echo.
echo Press enter to continue, or close now to quit.
pause>nul

if not exist %windir%\system32\filelist.bat goto inst

goto fail

:inst
copy bin\filelist.bat %windir%\system32
regedit /s bin\ListFiles.reg
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













