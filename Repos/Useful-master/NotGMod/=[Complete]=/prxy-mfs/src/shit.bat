@echo off



rem REG QUERY "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\fuckyou" /v ProxyEnable

FOR /F "skip=2 tokens=2*" %%a in ('
REG QUERY "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\fuckyou" /v ProxyEnable
') DO (set var=%%b)

echo.
echo %var%
echo.




pause
exit