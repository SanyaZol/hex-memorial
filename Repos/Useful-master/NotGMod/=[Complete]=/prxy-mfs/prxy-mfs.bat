@echo off
set title=MFSiNC's Proxy On-Offer
set key=HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings
title %title% :D

FOR /F "skip=2 tokens=2*" %%a in ('
REG QUERY "%key%" /v ProxyEnable
') DO (set var=%%b)

if %var%==0x1 (
	set status=ON
	color 0a
	) else (
	set status=OFF
	color 0c
)

echo.
echo ::::    ::::  :::::::::: :::::::: ::::::::::: ::::    :::  ::::::::  
echo +:+:+: :+:+:+ :+:       :+:    :+:    :+:     :+:+:   :+: :+:    :+: 
echo +:+ +:+:+ +:+ +:+       +:+           +:+     :+:+:+  +:+ +:+        
echo +#+  +:+  +#+ :#::+::#  +#++:++#++    +#+     +#+ +:+ +#+ +#+        
echo +#+       +#+ +#+              +#+    +#+     +#+  +#+#+# +#+        
echo #+#       #+# #+#       #+#    #+#    #+#     #+#   #+#+# #+#    #+# 
echo ###       ### ###        ######## ########### ###    ####  ########  
echo.
echo %title%
echo.
echo System proxy is:
echo.
echo [ %status% ]
echo.
echo Press [Enter] to toggle proxy. . .
echo.
pause>nul

if %var%==0x1 (
	set word=0
	) else (
	set word=1
)

REG ADD "%key%" /v ProxyEnable /t REG_DWORD /d 0000000%word% /f

exit