@echo off
echo RM Colour Magic Clipart Adder by MFSiNC
echo This will add more clipart to RM Colour Magic 2.x
echo WARNING, INSTALL SETUP FIRST THEN RUN THIS

rmdir /S "C:\Program Files\RM Classroom\Resources" /Q

xcopy "Resources" "C:\Program Files\RM Classroom\Resources" /Y /S /E /i

