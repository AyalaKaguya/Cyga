@echo off

if "#%1" equ "#" (
   echo CygaBox procbar ^(BATCH^)
   echo Usage:
   echo     call procbar ^<current:int^> ^<total:int^> ^<return:pint^>
   echo,
   echo Output:
   echo     Outputs a load bar that returns the character length of the load bar.
   echo,
   echo Example:
   echo     procbar 10 20 len
   echo     log len
   goto:eof
)

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
endlocal&( if "%~3" neq ""  set /a "%~3=%~2+2")&goto:eof