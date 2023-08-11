@echo off
set path1=%windir%\system32\PATH1
set title=MFSiNC's Decompile-o-Matic
title %title% - WORKING
color 0e

:checkem
if not exist "%path1%\bspconv.exe" (
	goto checkem2
) else if not exist "%path1%\vmex.jar" (
	goto checkem2
) else if not exist "%path1%\vstdlib.dll" (
	goto checkem2
) else if not exist "%path1%\tier0.dll" (
	goto checkem2
) else if not exist "%path1%\sleep.exe" (
	goto checkem2
)

set missing=false
goto start

:checkem2
set error=Files are missing
set missing=true
goto fail


:start
if (%1) == () (
	set error=No file selected
	goto fail
	) else (
	set file=%1
	goto bsp
)


:bsp
For %%F in (%file%) do (
	if "%%~xF" == ".bsp" (
		set map=%%~nF
		set dir="%%~dpF"
		goto CrackSmokingCompiler
	) else (
	set error=File is not BSP
	goto fail
	)
)


:CrackSmokingCompiler
cd %dir%
if exist %map%_d.vmf (
	set error=VMF already exists
	goto fail
	) else if exist %map%.bsp (
		if ERRORLEVEL 1 set ERRORLEVEL 0
		java -jar "%path1%\vmex.jar" %map%.bsp
		if ERRORLEVEL 1 (
			echo.
			echo BSP will not decompile, trying to convert..
			bspconv.exe %map%.bsp %map%_conv.bsp
			echo.
			if ERRORLEVEL 1 set ERRORLEVEL 0
			java -jar "%path1%\vmex.jar" %map%_conv.bsp
			ren %map%_conv_d.vmf %map%_d.vmf
			if ERRORLEVEL 1 (
				sleep 1
				if exist %map%_conv.bsp del /f /q %map%_conv.bsp >nul
				set error=BSP is broken/wrong version and will not decompile
				goto fail
			)
		)
	) else (
	set error=No BSP to load into decompiler
	goto fail
)

sleep 1
if exist %map%_conv.bsp del /f /q %map%_conv.bsp >nul

if exist %map%_d.vmf (
	goto done
	) else (
	set error=VMF doesnt exist, oh crap
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
rem pause
exit

:fail
title %title% - ERROR!
color 0c
echo.
echo =====================================================
echo  %error%!
if %missing% == true (
	echo  Make sure these files are in
	echo  %path1%
	echo.
	if not exist "%path1%\bspconv.exe" echo  bspconv.exe
	if not exist "%path1%\sleep.exe" echo  sleep.exe
	if not exist "%path1%\vmex.jar" echo  vmex.jar
	if not exist "%path1%\vstdlib.dll" echo  vstdlib.dll
	if not exist "%path1%\tier0.dll" echo  tier0.dll
)
echo =====================================================
echo.

if %missing% == true (
	pause
	) else (
	sleep 2
	rem pause
)
exit

