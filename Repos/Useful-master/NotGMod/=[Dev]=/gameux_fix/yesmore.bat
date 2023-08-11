@echo off
ren C:\Windows\SysWOW64\GameUXLegacyGDFs.bak GameUXLegacyGDFs.dll
regsvr32 /s "C:\Windows\SysWOW64\GameUXLegacyGDFs.dll"

ren C:\Windows\SysWOW64\gameux.bak gameux.dll
regsvr32 /s "C:\Windows\SysWOW64\gameux.dll"



ren C:\Windows\System32\GameUXLegacyGDFs.bak GameUXLegacyGDFs.dll
regsvr32 /s "C:\Windows\System32\GameUXLegacyGDFs.dll"

ren C:\Windows\System32\gameux.bak gameux.dll
regsvr32 /s "C:\Windows\System32\gameux.dll"






