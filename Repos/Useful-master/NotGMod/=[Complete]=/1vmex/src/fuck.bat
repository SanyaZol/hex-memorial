@echo off

set file="C:\Documents and Settings\HeX\Desktop\dm_biohazard_cal.bsp"

For %%F in (%file%) do (

	if "%%~xF" == ".bsp" (
	set map=%%~nxF
	set dir=%%~dpF
	goto lol
	)
)


:lol
echo.
echo file: %map%
echo dir : %dir%
echo.
echo complete path: %dir%%map%


echo.
pause
exit

:crap
color 0c
echo.
echo no file!
pause
exit

:omg
color 0a
echo.
echo worked!
pause
exit
