@echo off
for /f %%a in ('echo prompt $H^|cmd') do set "bs=%%a"
set "io_stream_times=10"
set "pi_decimal=150"
set "work_threads=8"
if not "%*"=="" call :%* &exit /b
if exist "benchmark_run" del /q benchmark_run
for /l %%i in (1,1,%work_threads%) do (
    if exist "benchmark_%%i" del /q benchmark_%%i
)

echo CmdBench 命令行基准测试 v4.3，by:AyalaKaguya
if "%Cyga_Version%" neq "" echo 检测到Cyga@%Cyga_Version%
call:var len 50
call:getpi len pi
call:print pi
call:len pi len
call:clchr len
echo,
echo 在开始测试前请关闭其他正在运行的命令行程序以及高CPU占用的程序，还可以尝试关闭杀毒软件来优化测试结果。
echo 还请确保工作目录不处于高权限等级下，不要使用管理员打开此测试软件，如无法满足测试条件请直接关闭。
echo,
echo 按下任意键开始......
pause>nul

echo 当前项目：命令行输出流性能
<nul set/p=进度：
set "t=%time%"
for /l %%i in (0,1,%io_stream_times%) do (
    call :procbar %%i %io_stream_times% len
    help >nul
    for /? >nul
    if /? >nul
    taskkill /? >nul
    copy /? >nul
    net /? >nul 2>nul
    wmic /? >nul
    call :clchr len
)
echo 完成
call :mtime %t% %time% t_output
echo 命令行输出流性能测试已完成，用时%t_output%。& echo,

echo 当前项目：批处理运算性能（pi-%pi_decimal%）
set "t=%time%"
call:var len %pi_decimal%
call:getpi len
echo,
call :mtime %t% %time% p_output
echo 批处理运算性能测试已完成，用时%p_output%。& echo,

echo 当前项目：批处理运算性能（pi-%pi_decimal%@%work_threads%进程）
for /l %%i in (1,1,%work_threads%) do (
    start /b "" "%~f0" thread_pitest %%i
)
<nul set/p=进度：
set "t=%time%"
setlocal EnableDelayedExpansion
echo start>>benchmark_run
set j=0
call:procbar !j! !work_threads! len
:sub_pitest
for /l %%i in (1,1,!work_threads!) do (
    if exist "benchmark_%%i" (
        set /a "j=!j!+1"
        del /q benchmark_%%i
        call:clchr len
        call:procbar !j! !work_threads! len
    )
)
if "!j!"=="!work_threads!" ( del /q benchmark_run& goto sub_pitest_ok)
goto sub_pitest
:sub_pitest_ok
call:clchr len
endlocal
echo 完成
call :mtime %t% %time% th_output
echo 批处理多进程运算性能测试已完成，用时%th_output%。& echo,
pause
exit /b



:thread_pitest <thread:int>
if not exist "benchmark_run" (goto thread_pitest)
call:var len %pi_decimal%
call:getpi len null
echo ok>>benchmark_%1
exit

:print <var:pstr>
setlocal EnableDelayedExpansion
set/p=!%~1!<nul
endlocal&goto:eof

:var <var:point> <val:value>
setlocal EnableDelayedExpansion
endlocal&(
    set "%~1=%~2"
)&goto:eof

:getpi <len:pint> <return:?pint>
setlocal EnableDelayedExpansion
set "pi="
set c=!%1!&set/a c=(c*100/3)+70,cc=c/10,n=cc
for /l %%a in (1 1 %cc%)do set/a f_%%a=2000
for /l %%a in (%c% -132 100)do (set/a n=%%a/10,m=2*n-1
    set/a "d=f_!n!*10000,f_!n!=d%%m,d=d/m,n-=1"
    for /l %%b in (!n! -1 1)do (set/a n=%%b,m=2*n-1
        set/a "d=d*n+f_!n!*10000,f_!n!=d%%m,d=d/m,n-=1"
    )
    set/a "an=e+d/10000,e=d%%10000"
    if !an! lss 1000 set an=000!an!
    if "%2"=="" (<nul set/p=!an:~-4!) else (set "pi=!pi!!an:~-4!")
)
endlocal&(if "%2" neq "" set "%2=%pi%")&goto:eof 2>nul

:clchr <count:pint>
setlocal EnableDelayedExpansion& set "bk= "& set "len=!%~1!"
call :mpstr bs !len! bss
call :mpstr bk !len! bsb
<nul set/p=%bss%%bsb%%bss%
endlocal&goto:eof

:procbar <current:int> <total:int> <return:pint>
setlocal EnableDelayedExpansion &set /a j=%~2-%~1
set "equ=="
call :mpstr equ %~1 str
<nul set/p=[!str!
if "%~1" neq "%~2" <nul set/p=%bs% %bs%^>
set "bks=_%bs% "
call :mpstr bks !j! str
<nul set/p=!str!]
endlocal&set /a "%~3=%~2+2"&goto:eof

:mtime <begin_time:time> <end_time:time> <return:pint>
setlocal&set be=%~1:%~2&set cc=(%%d-%%a)*360000+(1%%e-1%%b)*6000+1%%f-1%%c&set dy=-8640000
for /f "delims=: tokens=1-6" %%a in ("%be:.=%")do endlocal&set/a %3=%cc%,%3+=%dy%*("%3>>31")
goto:eof

:len <keyName:pstr> <return:pint>
setlocal EnableDelayedExpansion& set i=0& set "s=#!%~1!"
for %%i in (1024 512 256 128 64 32 16 8 4 2 1 ) do ( if not "!s:~%%i,1!"=="" ( set /a "i+=%%i"& set "s=!s:~%%i!"))
endlocal& set "%2=%i%"&goto:eof

:mpstr <str:pstr> <count:int> <return:pstr>
setlocal EnableDelayedExpansion& set i=%~2& set "s=!%~1!"& set "str="
for /l %%i in (1,1,!i!) do set "str=!str!!s!"
endlocal& set "%3=%str%"&goto:eof

:cpstr <mode:str> <target:pstr>
if defined %~2 (
	if "%~1"=="a" >nul ( for %%i in (a b c d e f g h i j k l m n o p q r s t u v w x y z) do call set "%~2=%%%~2:%%i=%%i%%" )
	if "%~1"=="A" >nul ( for %%i in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) do call set "%~2=%%%~2:%%i=%%i%%" )
)
goto:eof