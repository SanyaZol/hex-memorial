@echo off

echo lol, remove this
pause
exit


FOR /R %%F in ("%ProgramFiles%\Common Files\Nokia\Codecs\Emz*.dll") DO (
regsvr32 /u /s "%%F"
)

pause
exit
