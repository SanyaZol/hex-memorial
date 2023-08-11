for /R "tokens=*" %%I in ('dir /ad/s/b') do dir "%%I" /a-h /b /-p /o:gen > "%cd%\file.txt"

pause