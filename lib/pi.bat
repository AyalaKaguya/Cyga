@echo off
:pi <len:pint> <return:?pint>
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
endlocal&(if "%2" neq "" set "%2=%pi%")&goto:eof