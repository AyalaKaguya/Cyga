@echo off

if "#%1" equ "#" (
   echo CygaBox var ^(BATCH^)
   echo Usage:
   echo     call var ^<var:point^> ^<val:value^>
   echo,
   echo Output:
   echo     Assign a value to the pointer, var is the variable name, val is the variable itself, equivalent to 'set "%%var%%=%%val%%"'.
   echo,
   echo Example:
   echo     var str "Hello,World^!"
   echo     log str
   goto:eof
)

:var <var:point> <val:value>
setlocal EnableDelayedExpansion
endlocal&(
    set "%~1=%~2"
)&goto:eof