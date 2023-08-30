@echo off

if "#%1" equ "#" (
   echo CygaBox len ^(BATCH^)
   echo Usage:
   echo     call len ^<keyName:pstr^> ^<return:pint^>
   echo,
   echo Output:
   echo     Gets the length of the pointer pointing to the content.
   echo,
   echo Example:
   echo     var str "Hello,World!"
   echo     len str len
   echo     log len
   goto:eof
)

:len <keyName:pstr> <return:pint>
setlocal EnableDelayedExpansion& set i=0& set "s=#!%~1!"
for %%i in (1024 512 256 128 64 32 16 8 4 2 1 ) do ( if not "!s:~%%i,1!"=="" ( set /a "i+=%%i"& set "s=!s:~%%i!"))
endlocal& set "%2=%i%"&goto:eof