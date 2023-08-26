@echo off
:procbar <current:int> <total:int> <return:pint>
setlocal EnableDelayedExpansion &set /a j=%~2-%~1
for /f %%a in ('echo prompt $H^|cmd') do set "bs=%%a"
set "equ=="
call mpstr equ %~1 str
<nul set/p=[!str!
if "%~1" neq "%~2" <nul set/p=%bs% %bs%^>
set "bks=_%bs% "
call mpstr bks !j! str
<nul set/p=!str!]
endlocal&set /a "%~3=%~2+2"&goto:eof