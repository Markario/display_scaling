@ECHO OFF

explorer ms-settings:display
ping -n 2 127.0.0.1 > nul

CSCRIPT //nologo "C:\Users\markario\Documents\Utility\display_scaling\scale_display.vbs" 10
EXIT