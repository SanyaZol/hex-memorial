@echo off
set path1=%windir%\system32\PATH1
set title=MFSiNC's Decompile-map-on-rightclick
title %title%
color 0e


:checkem
if not exist "%path1%\bspconv.exe" (
	set error=Files are missing
	set missing=true
	goto fail
) else if not exist "%path1%\vmex.jar" (
	set error=Files are missing
	set missing=true
	goto fail
) else if not exist "%path1%\vstdlib.dll" (
	set error=Files are missing
	set missing=true
	goto fail
) else if not exist "%path1%\tier0.dll" (
	set error=Files are missing
	set missing=true
	goto fail
)




rem new way
:checkem
if not exist "%path1%\bspconv.exe" (
	set error=Files are missing
	set missing=true
	goto fail
) else if not exist "%path1%\vmex.jar" (
	set error=Files are missing
	set missing=true
	goto fail
) else if not exist "%path1%\vstdlib.dll" (
	set error=Files are missing
	set missing=true
	goto fail
) else if not exist "%path1%\tier0.dll" (
	set error=Files are missing
	set missing=true
	goto fail
)



rem old way
:checkem
if not exist "%path1%\bspconv.exe" (
	set error=Files are missing
	set missing=true
	goto fail
)
if not exist "%path1%\vmex.jar" (
	set error=Files are missing
	set missing=true
	goto fail
)
if not exist "%path1%\vstdlib.dll" (
	set error=Files are missing
	set missing=true
	goto fail
)
if not exist "%path1%\tier0.dll" (
	set error=Files are missing
	set missing=true
	goto fail
)


:fail
title %title% - ERROR!
color 0c
echo.
echo =================================
echo   %error%!
if %missing% == true (
	echo  cheese
	echo.
)
if not exist "%path1%\bspconv.exe" echo  bspconv.exe
if not exist "%path1%\vmex.jar" echo  vmex.jar!
if not exist "%path1%\vstdlib.dll" echo  vstdlib.dll!
if not exist "%path1%\tier0.dll" echo  tier0.dll
echo =================================
echo.
pause

rem sleep 2
exit

