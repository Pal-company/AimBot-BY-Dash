@echo off
setlocal

:: Get the directory of the batch script
set "SCRIPT_DIR=%~dp0"

:: Define the names of the two applications you want to run
set "APP1=Aimbot.exe"
set "APP2=external-ingame-render.exe"

:: Check if the applications exist in the current directory
if exist "%SCRIPT_DIR%\%APP1%" (
    echo Running %APP1%...
    start "" "%SCRIPT_DIR%\%APP1%"
) else (
    echo %APP1% not found in the same directory as this script.
)

if exist "%SCRIPT_DIR%\%APP2%" (
    echo Running %APP2%...
    start "" "%SCRIPT_DIR%\%APP2%"
) else (
    echo %APP2% not found in the same directory as this script.
)

endlocal
