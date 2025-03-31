@echo off
:loop
shutdown /a
tasklist /fi "imagename eq shutdown.exe" 2>NUL | find /i "shutdown.exe" >NUL
if "%errorlevel%"=="0" (
    echo Desligamento cancelado.
    timeout /t 5 /nobreak >nul
)
goto loop
