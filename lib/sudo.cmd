@echo off

if "#%1" equ "#" (
   echo CygaBox sudo ^(BATCH^)
   echo Usage:
   echo     call sudo [command?[command?[command?[...]]]]
   echo,
   echo Output:
   echo     Execute commands as administrators, command to ? Apart, it will boot from a separate environment.
   echo,
   echo Example:
   echo     sudo cmd
   echo     sudo set?pause
   goto:eof
)

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