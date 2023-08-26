@echo off
:clchr <count:pint>
setlocal EnableDelayedExpansion& set "bk= "& set "len=!%~1!"
for /f %%a in ('echo prompt $H^|cmd') do set "bs=%%a"
call mpstr bs !len! bss
call mpstr bk !len! bsb
<nul set/p=%bss%%bsb%%bss%
endlocal&goto:eof