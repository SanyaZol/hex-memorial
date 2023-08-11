@ECHO OFF
:START
ECHO This script will auto import the oem files to your system32 directory.
Pause
COPY OEMINFO.INI "C:\WINDOWS\system32" /Y
COPY OEMLOGO.BMP "C:\WINDOWS\system32" /Y
Start notepad.exe C:\WINDOWS\system32\oeminfo.ini

C:\WINDOWS\system32\SYSDM.CPL

::"C:\WINDOWS\system32\rundll32.exe" /d C:\WINDOWS\system32\shell32.dll,Control_RunDLL SYSDM.CPL


