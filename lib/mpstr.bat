@echo off

if "#%1" equ "#" (
   echo CygaBox mpstr ^(BATCH^)
   echo Usage:
   echo     call mpstr ^<str:pstr^> ^<count:int^> ^<return:pstr^>
   echo,
   echo Output:
   echo     Copy the contents of the input string pointer to the specified copy and save it in the return pointer.
   echo,
   echo Example:
   echo     var str "Hello,World^!"
   echo     mpstr str 10 str
   echo     log str
   goto:eof
)

:mpstr <str:pstr> <count:int> <return:pstr>
setlocal EnableDelayedExpansion& set i=%~2& set "s=!%~1!"& set "str="
for /l %%i in (1,1,!i!) do set "str=!str!!s!"
endlocal& set "%3=%str%"&goto:eof