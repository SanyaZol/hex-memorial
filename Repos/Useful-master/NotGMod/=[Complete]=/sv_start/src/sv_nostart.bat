@echo off
echo.
echo Disabling startup scripts and starting pc...

set wol=\\192.168.0.7\root\GMod\WOL

if exist %wol%

wolcmd

echo.
echo Server started!
sleep 2
exit
