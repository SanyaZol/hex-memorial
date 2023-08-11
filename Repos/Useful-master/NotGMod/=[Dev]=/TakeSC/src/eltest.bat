@echo off

calc

if errorlevel 1 goto fail

if errorlevel 0 goto pass

:fail
color 0c
echo.
echo.
echo fail
goto exit

:pass
color 0a
echo.
echo.
echo pass
goto exit


:exit
pause
exit
