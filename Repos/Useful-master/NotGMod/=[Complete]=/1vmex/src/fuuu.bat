@echo off


if (%1) == () (
	set file=NONE
	) else (
	set file=%1
)


if %file% == NONE (
	goto crap
	) else (
	goto omg
)



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
