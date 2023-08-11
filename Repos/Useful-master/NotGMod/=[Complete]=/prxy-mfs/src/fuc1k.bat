@echo off

REG ADD "[HKEY_CURRENT_USER\one]" /v ProxyEnable /t REG_DWROD /d 1 /f

pause
exit

HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\fuckyou