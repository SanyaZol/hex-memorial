@echo off
set file=dtoptmp.png
set orig=dtoptmp.bmp
set srv=\\192.168.0.9\xampp\htdocs\bar\pics\dtop
set dname=dtop


if exist screenshot-o-matic.vbs (
	cscript screenshot-o-matic.vbs
	sleep 1
	) else (
	goto scfail
)


if errorlevel 1 set errorlevel 0

if exist %orig% (
	convert.exe %orig% %file%
	sleep 1
	) else (
	echo No image!
	goto exit
)

if errorlevel 1 goto imfail


set now=Fuck
rem FOR /F "tokens=1-4 delims=/:. " %%J IN ("%time%") DO SET thetime=%%J.%%K
rem set now=%date%_%thetime%

rem no more curtime in the file name
set now=%date%


if exist "%file%" (

	FOR %%F IN ("%file%") DO (
		if exist %%~nxF (
			ren %%~nxF %dname%.%now%.%%~xF
			if not exist "%srv%\%dname%.%now%.%%~xF" copy %dname%.%now%.%%~xF "%srv%"
		) else (
			color 0c
			echo Rename fail!
			goto exit
		)
	)
	
	) else (
	color 0c
	echo No file!
	goto exit
)



color 0a
echo.
echo Done
goto exit

:imfail
color 0c
echo ImageMagick fail!
goto exit

:scfail
color 0c
echo screenshot-o-matic fail!
goto exit

:exit
sleep 1
pause
exit