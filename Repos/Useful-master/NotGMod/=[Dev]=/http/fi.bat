@echo off

set installpath=Oh snap

FOR /F "skip=4 tokens=3-4*" %%a in ('REG QUERY "HKCR\HTTP\shell\open\command" /ve') DO (set installpath=%%b)
echo.
echo.
echo =================================
echo %installpath%
echo =================================
echo.


pause
