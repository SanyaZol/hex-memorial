@echo of

echo open mfsinc.co.uk>>ftpcmd.txt
echo user gmod>>ftpcmd.txt
echo >>ftpcmd.txt
echo bin>>ftpcmd.txt
echo put orangebox\garrysmod\data\ulx_logs\*.*>>ftpcmd.txt
echo quit>> ftpcmd.txt
ftp -n -s:ftpcmd.txt
del ftpcmd.txt