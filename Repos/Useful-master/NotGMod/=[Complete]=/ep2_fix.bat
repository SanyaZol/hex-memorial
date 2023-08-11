@echo off

if not exist GameInfo_new.txt goto fail

title MFSiNC's GameInfo.txt Replacer - Waiting
color 0c
echo.
echo ==============================
echo MFSiNC's GameInfo.txt Replacer
echo ==============================
sleep 1

color 0e
title MFSiNC's GameInfo.txt Replacer - Checking
echo.
echo Checking GameInfo.txt file for size..
sleep 1


rem hackey
if not exist GameInfo.txt echo lol >> GameInfo.txt
FOR %%G IN (GameInfo.txt) DO (IF %%~zG LSS 1594 call :doit)

color 0a
title MFSiNC's GameInfo.txt Replacer - File OK
echo.
echo File is fine, nothing changed.
sleep 1
exit


:doit
color 0a
title MFSiNC's GameInfo.txt Replacer - Copying
echo.
echo File is the wrong size, new GameInfo.txt file copied
DEL GameInfo.txt
copy GameInfo_new.txt GameInfo.txt > nul
sleep 2
echo.
echo Done!
title MFSiNC's GameInfo.txt Replacer - Done
sleep 1
exit

:fail
title MFSiNC's GameInfo.txt Replacer - Oh Snap
color 09
echo.
echo GameInfo_new.txt is missing
pause

