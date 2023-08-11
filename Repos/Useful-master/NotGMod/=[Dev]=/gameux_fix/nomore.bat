@echo off
regsvr32 /u /s "C:\Windows\SysWOW64\GameUXLegacyGDFs.dll"
ren C:\Windows\SysWOW64\GameUXLegacyGDFs.dll GameUXLegacyGDFs.bak

regsvr32 /u /s "C:\Windows\SysWOW64\gameux.dll"
ren C:\Windows\SysWOW64\gameux.dll gameux.bak



regsvr32 /u /s "C:\Windows\System32\GameUXLegacyGDFs.dll"
ren C:\Windows\System32\GameUXLegacyGDFs.dll GameUXLegacyGDFs.bak

regsvr32 /u /s "C:\Windows\System32\gameux.dll"
ren C:\Windows\System32\gameux.dll gameux.bak






