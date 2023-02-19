@echo off

if /i "%1"=="host" (
    cecho #Cn[Connect] %2
    plink %2
    goto :eof
)

if /i "%1"=="console" (
    cecho #Cn[Connect] %2
    clht %2
    goto :eof
)

cecho [#RnError#Wn] This option is not available.
