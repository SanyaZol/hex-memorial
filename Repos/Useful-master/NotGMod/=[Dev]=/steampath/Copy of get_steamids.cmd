
@echo off
if NOT %1a == a goto recurse

reg query HKCU\Software\Valve\Steam\Users > users.tmp

for /f "skip=1 delims=\ tokens=6" %%i in (users.tmp) do call %0 %%i
del users.tmp


pause
goto end

:recurse
reg query HKCU\Software\Valve\Steam\Users\%1\friends /v PersonaName > name.tmp

for /f "skip=2 tokens=3 delims= " %%i in (name.tmp) do set NAME=%%i

del name.tmp

set SID=%1
set /A SID=SID/2
set /A SID1=SID*2
set STEAMBIT=0

if NOT %SID1% == %1 set STEAMBIT=1

if %NAME%a == a (
	echo Can't find name for SteamID STEAM_0:%STEAMBIT%:%SID%
) else (
	echo "%NAME%" uses SteamID STEAM_0:%STEAMBIT%:%SID%
)









:end