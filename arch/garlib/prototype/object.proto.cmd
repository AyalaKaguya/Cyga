@echo off
if "%1"=="new" (
   set "%2.type=object"
   set "%2=%~3"
   copy "%_gfl.path%instance\object.inst.cmd" "%_gfl.path%runtime\%2.bat" > nul
   goto :eof
)
if "%1"=="del" (
   set "%2.type="
   set "%2="
   del /q "%_gfl.path%runtime\%2.bat"
   goto :eof
)