@echo off
set vmex=%windir%\system32\PATH1\vmex.jar
set title=MFSiNC's Decompile-map-on-rightclick
title %title%
color 0e


rem setter
if (%1) == () (
	set file=NONE
	) else (
	set file=%1
)

rem checker
if %file% == NONE (
	set dash= ===================
	set error=No file selected!
	goto fail
	) else (
	goto bsp
)


:bsp
For %%F in (%file%) do (

	if "%%~xF" == ".bsp" (
	set map=%%~nF
	set dir="%%~dpF"
	goto CrackSmokingCompiler
	) else (
	set error=File is not BSP!
	set dash= ==================
	goto fail
	)
	
)

:CrackSmokingCompiler
cd %dir%
if exist %map%.bsp (
	if ERRORLEVEL 1 set ERRORLEVEL 0
	java -jar "%vmex%" %map%.bsp
		if ERRORLEVEL 1 (
		set dash= ================================
		set error=BSP file is the wrong version!
		goto fail
		)
	) else (
	set dash= =================================
	set error=No BSP to load into decompiler!
	goto fail
)


if exist %map%_d.vmf (
	goto done
	) else (
	set dash= ==========================
	set error=VMF doesnt exist, crap!
	goto fail
)

:done
title %title% - DONE!
color 0a
echo.
echo =======
echo  Done!
echo =======
sleep 1
exit

:fail
title %title% - ERROR!
color 0c
echo.
echo %dash%
echo   %error%
echo %dash%
echo.
sleep 2
exit

