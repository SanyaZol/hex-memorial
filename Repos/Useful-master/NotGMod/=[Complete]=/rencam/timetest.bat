@echo off


FOR %%F IN ("camera_*.jpg") DO (
	echo %%~nxF
)


echo.
echo.
pause

exit
