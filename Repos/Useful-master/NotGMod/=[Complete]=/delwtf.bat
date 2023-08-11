@echo off

echo click proof, remove
pause
exit


rem FOR /r %%f IN ("U:\allmusic\*.ptn) DO (DEL /q "%%f")


FOR /r "U:\allmusic" %%f IN (PPThumbs.ptn) DO (
if exist "%%f" (recycle -f "%%f")
)

pause
exit

rem "U:\allmusic\Enrique Iglesias\Greatest Hits\PPThumbs.ptn"
