@echo off
setlocal EnableDelayedExpansion
if "%~2" equ "" (
   echo !%~1!
   goto :eof
)
if "%~2" equ "del" (
   endlocal
   call "%_gfl.path%\prototype\bool.proto.cmd" del %~1
)
if "%~2" equ "check" (
   endlocal
   for /f "delims=" %%i in (' call "%_gfl.path%\buildin\type_bool_check.cmd" %~1 ') do set "%~1=%%i"
   goto :eof
)
if "%~2" equ "reverse" (
   endlocal
   for /f "delims=" %%i in (' call "%_gfl.path%\buildin\type_bool_reverse.cmd" %~1 ') do set "%~1=%%i"
   goto :eof
)
endlocal