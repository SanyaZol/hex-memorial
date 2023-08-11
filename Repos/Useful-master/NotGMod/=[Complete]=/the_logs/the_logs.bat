@echo off
echo.
echo Doing a thing, wait.
echo.

if not exist %srcds%\ulx_logs.7z goto newone
if exist %srcds%\ulx_logs.7z goto fail

:fail
del %srcds%\ulx_logs.7z
goto newone

:newone
7z -t7z a "%srcds%\ulx_logs.7z" "%gmod%\data\ulx_logs\*.txt" -mx9 -ms=off -mmt

::move %gmod%\data\ulx_logs.7z %srcds%\ulx_logs.7z

echo open mfsinc.co.uk>>ftpcmd.txt
echo user gmod>>ftpcmd.txt
echo >>ftpcmd.txt
echo bin>>ftpcmd.txt
echo put ulx_logs.7z>>ftpcmd.txt
echo quit>> ftpcmd.txt
ftp -n -s:ftpcmd.txt
del ftpcmd.txt

del %srcds%\ulx_logs.7z
echo. 
echo. done
exit
