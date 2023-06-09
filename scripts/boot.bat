@echo off

SET BASE_PATH=%~dp0
SET BASE_PATH=%BASE_PATH:\scripts=%

echo Initializing services...

start "" /B "%BASE_PATH%config\config.xlaunch"
start "" /B "%BASE_PATH%bin\pulseaudio-13.0\bin\pulseaudio.exe"

echo Starting WSL2 instance...

wsl -d mint

echo Stopping services...

wsl -t mint

taskkill /F /IM pulseaudio.exe
taskkill /IM vcxsrv.exe
