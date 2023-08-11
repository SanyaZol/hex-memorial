@echo off

set now=Fuck
FOR /F "tokens=1-4 delims=/:. " %%J IN ("%time%") DO SET thetime=%%J.%%K.%%L

set now=%date%-%thetime%


if exist camera_2.jpg (
	ren camera_2.jpg camera_2_%now%.jpg
	) else (
	echo Ah shit
)



echo.
echo.
pause

exit
