@echo off
setlocal EnableDelayedExpansion
if "%~2" equ "" (
   echo !%~1!
   goto :eof
)
if "%~2" equ "del" (
   endlocal
   call "%_gfl.path%\prototype\int.proto.cmd" del %~1
)
if "%~2" equ "+" (
   if "!%~3.type!"=="int" (
      set /a $result=!%~1!+!%~3!
      echo !$result!
      goto :eof
   )
)
endlocal