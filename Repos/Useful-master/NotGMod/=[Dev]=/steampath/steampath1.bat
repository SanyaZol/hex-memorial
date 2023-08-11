@echo off

set installpath=Oh snap, tell HeX

FOR /F "skip=2 tokens=2*" %%a in ('REG QUERY "HKLM\SOFTWARE\Valve\Steam" /v InstallPath') DO (set installpath=%%b)
echo.
echo Steam is installed to:
echo.
echo =================================
echo %installpath%
echo =================================
echo.

FOR /F "skip=2 tokens=2*" %%a in ('REG QUERY "HKEY_CURRENT_USER\Software\Valve\Steam" /v LastGameNameUsed') DO (set gamename=%%b)
echo.
echo Your ingame name is:
echo.
echo =================================
echo %gamename%
echo =================================
echo.

FOR /F "skip=1 delims=\ tokens=3*" %%a in ('REG QUERY "HKEY_CURRENT_USER\Software\Valve\Steam" /v ModInstallPath') DO (set accname=%%b)
echo.
echo Steam account name is:
echo.
echo =================================
echo %accname%
echo =================================
echo.







pause
