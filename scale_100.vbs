Set WshShell = WScript.CreateObject("WScript.Shell")
Dim wait
wait = 500
Wscript.Sleep wait
WshShell.SendKeys "{TAB 2}"
Wscript.Sleep wait
WshShell.SendKeys 10
Wscript.Sleep wait
WshShell.SendKeys "%{F4}"