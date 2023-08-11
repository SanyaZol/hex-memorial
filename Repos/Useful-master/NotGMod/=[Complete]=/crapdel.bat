@echo off

FOR %%G IN ("%cd%\*.rar") DO (IF %%~zG LSS 8500 DEL "%%G")
FOR %%G IN ("%cd%\*.0??") DO (IF %%~zG LSS 8500 DEL "%%G")
FOR %%G IN ("%cd%\*.zip") DO (IF %%~zG LSS 8500 DEL "%%G")
FOR %%G IN ("%cd%\*.avi") DO (IF %%~zG LSS 8500 DEL "%%G")
