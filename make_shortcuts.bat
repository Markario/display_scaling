set CD=%~dp0

echo %CD%
set dest="%CD%Display Scale\"
echo Destination %dest%
set script=%CD%create_shortcut.vbs
mkdir %dest% 2> NUL

CSCRIPT //nologo %script% %CD% 100 %dest%
CSCRIPT //nologo %script% %CD% 200 %dest%
CSCRIPT //nologo %script% %CD% 300 %dest%
CSCRIPT //nologo %script% %CD% up %dest%
CSCRIPT //nologo %script% %CD% down %dest%
