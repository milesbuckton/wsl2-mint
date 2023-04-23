@echo off

SET BASE_PATH=%~dp0
SET BASE_PATH=%BASE_PATH:\scripts=%

echo Exporting distribution...

wsl --export mint "%BASE_PATH%sources/mint.tar"
