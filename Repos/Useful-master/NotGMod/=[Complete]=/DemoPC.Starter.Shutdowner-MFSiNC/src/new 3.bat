


if /i "%1"=="" set showmsg=false

if not %showmsg%==true echo Don't close this program, it'l close by itsself when its ready.

if not %showmsg%==true echo.









if not exist "%cd%\DemoPC.Starter.Shutdowner-MFSiNC.bat" goto aww
:ok
echo.
pause
exit

:aww
echo This file is named wrong lol
echo At least keep it as the correct name :(
goto ok


