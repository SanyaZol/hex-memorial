@echo off
setlocal ENABLEDELAYEDEXPANSION
set QLB=%programfiles%\Hewlett-Packard\HP Quick Launch Buttons

cd %QLB%

if not exist "%QLB%" (
	echo QLB dir not found, needs to be: %QLB%>>"%userprofile%\desktop\ThatDamnLog.txt"
) else if not exist "QLBCTRL.exe" (
	echo QLBCTRL.exe buggered off, wrong version?!>>"%userprofile%\desktop\ThatDamnLog.txt"
)

if (%1) == () (
	goto err
	) else (
	set args1=%~1
)

set str=%args1%
set str=%str%##
set str=%str:                ##=##%
set str=%str:        ##=##%
set str=%str:    ##=##%
set str=%str:  ##=##%
set str=%str: ##=##%
set str=%str:##=%
set args=%str%

if exist %args%.bat (
	rem echo started [%args%]>>"%userprofile%\desktop\ThatDamnLog.txt"
	start %args%.bat
	goto exit1

) else (
	echo [%args%] not found dumbass>>"%userprofile%\desktop\ThatDamnLog.txt"
	goto exit1
)

:err
echo No args, try again with something like "btnActn.exe 8553"
echo No args>>"%userprofile%\desktop\ThatDamnLog.txt"
pause
exit

:exit1
if exist "%userprofile%\desktop\ThatDamnLog.txt" (
	echo.>>"%userprofile%\desktop\ThatDamnLog.txt"
)
exit


