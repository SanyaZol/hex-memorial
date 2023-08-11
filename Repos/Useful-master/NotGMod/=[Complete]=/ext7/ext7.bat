@echo off

if exist %ulx_logs%\ulx_logs.7z goto extr
if not exist %ulx_logs%\ulx_logs.7z goto fail

:extr
cd %ulx_logs%
7z e C:\xampp\htdocs\ulx_logs/ulx_logs.7z -y
move %ulx_logs%\*.txt %ulx_logs%\Lawgs
del %ulx_logs%\ulx_logs.7z
exit

:fail
echo Ah shit, no archive
exit