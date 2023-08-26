@call %~dp0cygavars > nul
:: you code here...
call enable decmd
if defined Cyga_Enable_decmd (
    call me
)

call procbar 15 20 len
call clchr len

call var len 50
call pi len pi
call log pi
call len pi len
call clchr len

pause