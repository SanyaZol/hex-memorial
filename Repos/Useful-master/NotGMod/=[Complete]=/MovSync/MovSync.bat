@echo off
title MFSiNC's Movie Copier :D
color 1f

set mov=C:\Documents and Settings\HeX\Desktop\MovSync
set lan=\\192.168.0.7\public\Movies
set bkp=Q:\mybookworld\public\Movies

echo.
echo MFSiNC's Movie Copier :D

if not exist %lan% goto epicfail
if not exist %bkp% goto epicfail

if exist %1 goto indiv

if exist "%mov%\*.avi" goto folder
if exist "%mov%\*.mkv" goto folder
if exist "%mov%\*.divx" goto folder

goto fail

:folder
echo.
echo Found movies in folder, continue?
echo.
pause

echo Please wait, copying to LAN Drive..
copy "%mov%\*.*" "%lan%\*.*"
echo LAN Drive done.
echo.
sleep 1

echo Please wait, copying to Backup Drive..
copy "%mov%\*.*" "%bkp%\*.*"
echo Backup Drive done.
echo.
sleep 1

if exist "%mov%\*.avi" recycle -f "%mov%\*.avi"
if exist "%mov%\*.mkv" recycle -f "%mov%\*.mkv"
if exist "%mov%\*.divx" recycle -f "%mov%\*.divx"

goto done


:indiv
echo.
echo Copying from %1
echo.
pause

echo Please wait, copying to LAN Drive..
copy %1 "%lan%"
echo LAN Drive done.
echo.
sleep 1

echo Please wait, copying to Backup Drive..
copy %1 "%bkp%"
echo Backup Drive done.
echo.
sleep 1
goto done

:done
color 3f
cls
echo.
echo All done
pause
goto exit2


:fail
color 3c
cls
echo.
echo FAIL, did you add movies to the folder, or run with the correct command?
pause
goto exit2


:epicfail
color 3d
cls
echo.
echo EPIC FAIL, Can't connect to one or more drives.
echo Make sure they are plugged in jackass.
pause
goto exit2

:exit2
if exist "%mov%\Thumbs.db" recycle -f /f /q "%mov%\Thumbs.db">nul
exit
