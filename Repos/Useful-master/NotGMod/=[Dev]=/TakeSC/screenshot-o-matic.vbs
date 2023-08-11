

set shl=createobject("shell.application") 
shl.MinimizeAll 
WScript.Sleep 500


'Taking Screenshot using word object
Set oWordBasic = CreateObject("Word.Basic")
oWordBasic.SendKeys "{prtsc}"
oWordBasic.AppClose "Microsoft Word"
Set oWordBasic = Nothing
WScript.Sleep 1000


'Opening Paint Application
set WshShell = CreateObject("WScript.Shell")
WshShell.Run "mspaint"
WScript.Sleep 500

'Some times Paint Application is not activating properly
'To activate MS Paint properly i have minimized and restored the opened windows 
shl.MinimizeAll 
WScript.Sleep 1000
shl.UndoMinimizeAll
Set shl=Nothing
WScript.Sleep 1000

'Activating Paint Application
WshShell.AppActivate "untitled - Paint"
WScript.Sleep 5000

'Paste the captured Screenshot
WshShell.SendKeys "^v"
WScript.Sleep 1000

'Save Screenshot
WshShell.SendKeys "^s"
WScript.Sleep 500
WshShell.SendKeys "C:\Documents and Settings\HeX\Desktop\dtoptmp.bmp"

WScript.Sleep 500
WshShell.SendKeys "{ENTER}"

WScript.Sleep 100

 Set fso = CreateObject("Scripting.FileSystemObject")
  If fso.FileExists("C:\Documents and Settings\HeX\Desktop\dtoptmp.bmp") Then
    WshShell.SendKeys "y"
End If
set fso = Nothing

WScript.Sleep 500
WshShell.AppActivate "dtoptmp.bmp - Paint"
WScript.Sleep 800
WshShell.SendKeys "%{F4}"

WScript.Sleep 500


'shl.UndoMinimizeAll
WScript.Sleep 500

'Release Objects
Set WshShell=Nothing
WScript.Quit
'************************************************** 