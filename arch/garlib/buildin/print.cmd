@echo off
setlocal EnableDelayedExpansion
if "!%1.type!"=="String" echo !%~1! & goto :eof
if "!%1.type!"=="Bool" call type_bool_check !%1! & goto :eof
if not "!%1.type!"=="" echo !%1! & goto :eof
if "%1"=="" echo. & goto :eof
endlocal