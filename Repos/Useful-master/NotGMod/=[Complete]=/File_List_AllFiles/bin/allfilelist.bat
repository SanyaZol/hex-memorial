echo off
cd %1
if exist AllFiles.txt del AllFiles.txt
dir /a-h-d /b /-p /o:gen /S >AllFiles.txt
start AllFiles.txt
cd ..
echo on