@echo off

set installpath=Oh snap, tell HeX

FOR /F "tokens=3-4" %%a in ('REG QUERY "HKCR\HTTP\shell\open\command" /ve') DO (set installpath=%%b)
echo.
echo.
echo =================================
echo %installpath%
echo =================================
echo.


pause

rem start %installpath% http://google.com
