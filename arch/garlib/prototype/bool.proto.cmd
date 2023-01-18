@echo off
if "%1"=="new" (
   call "%_gfl.path%prototype\object.proto.cmd" new %2 %3
   set "%2.type=bool"
   set "%2=%~3"
   goto :eof
)
if "%1"=="del" (
   call "%_gfl.path%prototype\object.proto.cmd" del %2
   goto :eof
)