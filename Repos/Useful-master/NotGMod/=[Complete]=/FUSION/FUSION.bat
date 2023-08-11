@echo off
REM v 5.1
color 0c
cd C:\
if not exist FUSION mkdir C:\FUSION
cd C:\FUSION
echo HeX's PNG/JPG/GIF/SWF/BMP + RAR/7Z/ZIP Fusion-o-matic!
echo.
echo.
echo Put the 2 files to be fused in "C:\FUSION".
start C:\FUSION
pause
cls
if exist *.rar goto RAR
if exist *.zip goto ZIP
if exist *.7z goto 7Z
echo Error: Archive not found.
echo Check "C:\FUSION" and make sure a RAR or ZIP file is present.
goto exit
:RAR
if exist *.jp*g goto JPG
if exist *.png goto PNG
if exist *.bmp goto BMP
if exist *.gif goto GIF
if exist *.swf goto SWF
:ZIP
if exist *.jp*g goto JPG2
if exist *.png goto PNG2
if exist *.bmp goto BMP2
if exist *.gif goto GIF2
if exist *.swf goto SWF2
:7Z
if exist *.jp*g goto JPG3
if exist *.png goto PNG3
if exist *.bmp goto BMP3
if exist *.gif goto GIF3
if exist *.swf goto SWF3
echo Error: Image not found.
echo Check "C:\FUSION" and make sure a JPG/PNG/BMP/GIF/SWF file is present.
goto exit
:JPG
copy /b *.jpg + *.rar FUSED.jpg
echo JPG/RAR successfully fused.
goto exit
:PNG
copy /b *.png + *.rar FUSED.png
echo PNG/RAR successfully fused.
goto exit
:BMP
copy /b *.bmp + *.rar FUSED.bmp
echo BMP/RAR successfully fused.
goto exit
:GIF
copy /b *.gif + *.rar FUSED.gif
echo GIF/RAR successfully fused.
goto exit
:SWF
copy /b *.swf + *.rar FUSED.swf
echo SWF/RAR successfully fused.
goto exit
:JPG2
copy /b *.jpg + *.zip FUSED.jpg
echo JPG/ZIP successfully fused.
goto exit
:PNG2
copy /b *.png + *.zip FUSED.png
echo PNG/ZIP successfully fused.
goto exit
:BMP2
copy /b *.bmp + *.zip FUSED.bmp
echo BMP/ZIP successfully fused.
goto exit
:GIF2
copy /b *.gif + *.zip FUSED.gif
echo GIF/ZIP successfully fused.
goto exit
:SWF2
copy /b *.swf + *.zip FUSED.swf
echo SWF/ZIP successfully fused.
goto exit
:JPG3
copy /b *.jpg + *.7z FUSED.jpg
echo JPG/ZIP successfully fused.
goto exit
:PNG3
copy /b *.png + *.7z FUSED.png
echo PNG/ZIP successfully fused.
goto exit
:BMP3
copy /b *.bmp + *.7z FUSED.bmp
echo BMP/ZIP successfully fused.
goto exit
:GIF3
copy /b *.gif + *.7z FUSED.gif
echo GIF/ZIP successfully fused.
goto exit
:SWF3
copy /b *.swf + *.7z FUSED.swf
echo SWF/ZIP successfully fused.
:exit
pause
cls