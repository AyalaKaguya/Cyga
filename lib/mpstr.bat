@echo off
:mpstr <str:pstr> <count:int> <return:pstr>
setlocal EnableDelayedExpansion& set i=%~2& set "s=!%~1!"& set "str="
for /l %%i in (1,1,!i!) do set "str=!str!!s!"
endlocal& set "%3=%str%"&goto:eof