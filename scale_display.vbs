Dim wait
wait = 1000

WScript.Echo "Scale Display: " + WScript.Arguments(0)

Set WshShell = WScript.CreateObject("WScript.Shell")

if WScript.Arguments.Count = 0 then
    WScript.Echo "Missing parameters"
else
    Wscript.Sleep wait
    WshShell.SendKeys "{TAB 2}"
    Wscript.Sleep wait
    WshShell.SendKeys WScript.Arguments(0)
end if

Wscript.Sleep wait
WshShell.SendKeys "%{F4}"