@echo off

set now=Fuck
FOR /F "tokens=1-4 delims=/:. " %%J IN ("%time%") DO SET thetime=%%J.%%K.%%L

set now=%date%_%thetime%


if exist "camera_?.jpg" (

	FOR %%F IN ("camera_?.jpg") DO (
		if exist %%~nxF (
			ren %%~nxF %%~nF_%now%.jpg
		) else (
			echo Ah shit
		)
	)
	
	) else (
	echo Ah shit
)




echo.
echo Done
sleep 1

exit
