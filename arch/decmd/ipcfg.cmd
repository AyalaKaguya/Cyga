@echo off
setlocal EnableDelayedExpansion

if not "!netout!"=="0" (
    cecho [#RnError#Wn] Command "netinfo" not entered!
    goto :eof
)


set ncfg1=%2

if /i "%1"=="static" (
    netsh interface ip set address !%2! static %3 >nul 2>nul
    if "!errorlevel!"=="0" (
        cecho [#GnInfo#Wn] The command was executed successfully!
    ) else (
        cecho [#RnError#Wn] The command failed to execute.
    )
)

if /i "%1"=="dhcp" (
    netsh interface ip set address !%2! source=dhcp >nul 2>nul
    if "!errorlevel!"=="0" (
        cecho [#GnInfo#Wn] The command was executed successfully!
    ) else (
        cecho [#RnError#Wn] The command failed to execute.
    )
)
    
cecho [#RnError#Wn] This option is not available.