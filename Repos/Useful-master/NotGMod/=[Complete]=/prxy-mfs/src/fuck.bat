@echo off

REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\fuckyou" /v ProxyEnable /d "notepad.exe" /f

REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\fuckyou" /v ProxyEnable /t REG_DWORD /d 00000001 /f

REG QUERY "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\fuckyou" /v ProxyEnable /t REG_DWORD /d 00000001 /f


pause
exit
