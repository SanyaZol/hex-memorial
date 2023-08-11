@ECHO OFF
title "Command Prompt Here" Installer :D
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
echo "Command Prompt Here" Installer
echo.
echo This will add an option to all windows folders called "Command Prompt Here"
echo you already know if you need this or not
echo.
echo When chosen it will open a command prompt in that folder
echo It's more useful than you think
echo.
echo Press enter to continue, or close now to quit.
pause>nul

regedit /s bin\CPH.reg

cls
echo.
echo Done
echo.
pause
exit
