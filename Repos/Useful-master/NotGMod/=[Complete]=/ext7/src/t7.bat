@echo off

if exist %ulx_logs%\*.txt goto extr
if not exist %ulx_logs%\*.txt goto ext

:extr
calc.exe

:ext
exit