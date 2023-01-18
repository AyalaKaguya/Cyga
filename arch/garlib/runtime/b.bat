@echo off
setlocal EnableDelayedExpansion
set "$type=!%~n0.type!"
endlocal && call "%_gfl.path%instance\%$type%.inst.cmd" %~n0 %*
