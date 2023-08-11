@echo off
::sendlawl::
echo open ftp.mfsinc.co.uk 42>> ftpcmd.txt
echo user gmod>> ftpcmd.txt
echo >> ftpcmd.txt
echo bin>> ftpcmd.txt

echo put lawl.7z>> ftpcmd.txt

echo quit>> ftpcmd.txt
ftp -n -s:ftpcmd.txt
del ftpcmd.txt


