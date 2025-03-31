@echo off
:loop
shutdown /a
tasklist /fi "imagename eq shutdown.exe" 2>NUL | find /i "shutdown.exe" >NUL
goto loop
