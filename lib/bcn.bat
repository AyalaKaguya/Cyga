@echo off
if defined Cyga_Flag_SafeMode (
    echo bcn:Error^(Can not use bcn in SafeMode^!^)
    goto :eof)

if exist "%Cyga_LibDir%\sbin\bcn.bat%" (

    for %%j in ("%~3" "%~4" "%~5" "%~6") do (
        for /f "tokens=1,* delims=:" %%k in ("%%~j") do (
            if /i "%%k"=="/o" (
                echo bcn:Error^(flag "/o" not allowed^!^)
                goto :eof)))
                
    setlocal
    set "/o=%Cyga_BinDir%"

    if not exist "%Cyga_BinDir%\unrar.exe" (
        echo bcn:Info^(Install the front module...^)
        call "%~dp0\sbin\bcn.bat" get unrar)
    
    if /i not "%~2"=="bcn" (
        call "%~dp0\sbin\bcn.bat" %*
    ) else (
        call "%~dp0\sbin\bcn.bat" %*
        move /y "%Cyga_BinDir%\bcn.bat" "%Cyga_LibDir%\sbin\bcn.bat" > nul
        del /q "%Cyga_BinDir%\bcn.rar"
        del /q "%Cyga_LibDir%\sbin\unrar.exe")

    endlocal
    goto:eof

) else (
    echo bcn:Error^(file not existed^!^))