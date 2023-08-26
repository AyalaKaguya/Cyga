@echo off
setlocal ENABLEDELAYEDEXPANSION
set params=%*
if defined params (
    set "params=!params:'=''!"
    set "params=!params:"="""!"
    set "params=!params:?=&!"
)

@net session >nul 2>nul && (
    !params!
) || (
    powershell -noprofile -command "&{start-process %ComSpec% -ArgumentList '/c call !params!' -verb RunAs}" 2>&1 | findstr "." && set "sudoback=1" || set "sudoback=0"
) >nul 2>nul

endlocal&goto:eof