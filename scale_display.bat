@ECHO OFF

explorer ms-settings:display
ping -n 2 127.0.0.1 > nul

:: Fetch scale command
set "param=%~1"
goto :paramCheck
:paramPrompt
set /p "param=Enter scale param: "
:paramCheck
if "%param%"=="" goto :paramPrompt

CSCRIPT //nologo "C:\Users\markario\Documents\Utility\display_scaling\scale_display.vbs" %param%
EXIT