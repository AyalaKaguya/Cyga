@echo off
:mtime <begin_time:time> <end_time:time> <return:pint>
setlocal&set be=%~1:%~2&set cc=(%%d-%%a)*360000+(1%%e-1%%b)*6000+1%%f-1%%c&set dy=-8640000
for /f "delims=: tokens=1-6" %%a in ("%be:.=%")do endlocal&set/a %3=%cc%,%3+=%dy%*("%3>>31")
goto:eof