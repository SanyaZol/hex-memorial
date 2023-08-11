for /f "delims=" %%i in ('dir /ad/s/b') do dir "%%i" /a-h /b /-p /o:gen >>"%cd%\allmovies.lua"

pause