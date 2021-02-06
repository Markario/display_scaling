Dim StartIn
StartIn = WScript.Arguments(0)

Dim Scale
Scale = WScript.Arguments(1)

Dim Dest
Dest = WScript.Arguments(2)

WScript.Echo "Make Shortcut"
WScript.Echo "StartIn: " + StartIn
WScript.Echo "Scale: " + Scale
WScript.Echo "Dest: " + Dest

set WshShell = WScript.CreateObject("WScript.Shell" )
set oShellLink = WshShell.CreateShortcut(Dest & "Scale " & Scale & ".lnk")
oShellLink.TargetPath = StartIn & "scale_" & Scale & ".bat"
oShellLink.WindowStyle = 1
oShellLink.IconLocation = StartIn & "scale_" & Scale & ".ico"
oShellLink.Description = "Scale Display " & Scale
oShellLink.WorkingDirectory = StartIn
oShellLink.Save
