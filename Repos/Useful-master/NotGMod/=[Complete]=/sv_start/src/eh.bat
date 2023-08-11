@echo off
set wol=\\192.168.0.7\root\GMod\WOL

color 1f


:start
if exist %wol%\Off goto off
if exist %wol%\On goto on
goto servfail

:on
set status=[ ON ]
goto nxt

:off
set status=[ OFF ]
goto nxt

:servfail
set status=[ SERVFAIL ]
goto nxt


:nxt
echo.
echo [B] Boot / Boot with GMod: %status% like last time
echo.

pause
exit





