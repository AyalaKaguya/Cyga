@echo off
if defined Cyga_Flag_SafeMode (
    echo bcn:Error^(Can not use bcn in SafeMode^!^)
    goto :eof
)

if exist "%~dp0bcn.bat%" (
    set "PATH=%~dp0;%PATH%"
    echo bcn:Already enabled
    echo type "bcn" to get more information
    set "Cyga_Enable_bcn=True"
) else (
    echo bcn:Error^(file not existed^!^)
)