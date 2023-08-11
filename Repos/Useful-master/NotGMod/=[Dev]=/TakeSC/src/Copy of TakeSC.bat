@echo off
set file=tempsc.png
set srv=\\192.168.0.9\xampp\htdocs\bar\pics\dtop

rem take screenshot stuff 



set now=Fuck
rem FOR /F "tokens=1-4 delims=/:. " %%J IN ("%time%") DO SET thetime=%%J.%%K
rem set now=%date%_%thetime%

rem no more curtime in the file name
set now=%date%


if exist "%file%" (

	FOR %%F IN ("%file%") DO (
		if exist %%~nxF (
			ren %%~nxF %%~nF_%now%.png
			if not exist "%srv%\%%~nF_%now%.png" copy %%~nF_%now%.png "%srv%"
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

:exit
sleep 1
exit
