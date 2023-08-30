@echo off

if "#%1" equ "#" (
   echo CygaBox log ^(BATCH^)
   echo Usage:
   echo     call log ^<var:pstr^>
   echo,
   echo Output:
   echo     The output pointer points to.
   echo,
   echo Example:
   echo     var str "Hello,World!"
   echo     log str
   goto:eof
)

:log <var:pstr>
setlocal EnableDelayedExpansion
set/p=!%~1!<nul
endlocal&goto:eof