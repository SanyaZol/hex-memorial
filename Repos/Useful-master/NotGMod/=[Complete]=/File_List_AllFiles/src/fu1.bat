for /f "tokens=*" %%I in ('dir /ad/s/b') do dir "%%I" /a-h /b /-p /o:gen > %temp%\filelist.txt"