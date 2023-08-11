dir /a-h /b /-p /o:gen >"%cd%\FileList.txt"

for /f "delims=" %%i in ('dir /ad/s/b') do dir "%%i" /a-h /b /-p /o:gen >>"%cd%\FileList.txt"

pause