
for /f "tokens=*" %%I in ('dir /ad/s/b') do @echo %%I
dir /a-h /b /-p /o:gen >FileList.txt



for /f "tokens=*" %%I in ('dir /ad/s/b') do dir "%%I" /a-h /b /-p /o:gen > "%temp%\%%I.txt"

dir /a-h /b /-p /o:gen > %temp%\filelist.txt"
dir "%%I" /a-h /b /-p /o:gen > %temp%\filelist.txt"



for /f "delims=" %%i in ('dir /ad/s/b') do cacls "%%i" >>"%TEMP%\cacls.log"

for /f "delims=" %%i in ('dir /ad/s/b') do dir "%%i" /a-h /b /-p /o:gen >>"%cd%\cacls.log"


FOR /f "tokens=*" %%G IN ('dir "%cd%\*.*" ^| find "/"') DO echo %%G

