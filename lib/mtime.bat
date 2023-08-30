@echo off

if "#%1" equ "#" (
   echo CygaBox mtime ^(BATCH^)
   echo Usage:
   echo     call mtime ^<begin_time:time^> ^<end_time:time^> ^<return:pint^>
   echo,
   echo Output:
   echo     Get the time difference between two periods, measured in 10 times milliseconds.
   echo,
   echo Example:
   echo     var t1 %%time%%
   echo     ...
   echo     var t2 %%time%%
   echo     mtime %%t1%% %%t2%% mt
   echo     log mt
   goto:eof
)

:mtime <begin_time:time> <end_time:time> <return:pint>
setlocal&set be=%~1:%~2&set cc=(%%d-%%a)*360000+(1%%e-1%%b)*6000+1%%f-1%%c&set dy=-8640000
for /f "delims=: tokens=1-6" %%a in ("%be:.=%")do endlocal&set/a %3=%cc%,%3+=%dy%*("%3>>31")
goto:eof