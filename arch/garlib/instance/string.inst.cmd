@echo off
setlocal EnableDelayedExpansion
if "%~2" equ "" (
   echo !%~1!
   goto :eof
)
if "%~2" equ "del" (
   endlocal
   call "%_gfl.path%\prototype\string.proto.cmd" del %~1
)
if "%~2" equ "sub" (
   echo !%~1:~%~3,%~4!
   goto :eof
)
endlocal