@echo off

if "#%1" equ "#" (
   echo CygaBox clchr ^(BATCH^)
   echo Usage:
   echo     call clchr ^<count:pint^>
   echo,
   echo Output:
   echo     Deletes the contents of the specified character length ^(only on the same line^) before the command-line output stream pointer.
   echo,
   echo Example^(in batch^):
   echo     call var str "Hello,World^!"
   echo     call log str
   echo     call clchr 10
   goto:eof
)

:clchr <count:pint>
setlocal EnableDelayedExpansion& set "bk= "& set "len=!%~1!"
for /f %%a in ('echo prompt $H^|cmd') do set "bs=%%a"
call mpstr bs !len! bss
call mpstr bk !len! bsb
<nul set/p=%bss%%bsb%%bss%
endlocal&goto:eof