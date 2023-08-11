echo off
cd %1
if exist FileList.txt del FileList.txt
dir /a-h /b /-p /o:gen >FileList.txt
start FileList.txt
cd ..
echo on