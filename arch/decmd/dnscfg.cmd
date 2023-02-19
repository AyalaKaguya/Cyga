@echo off

if not "!netout!"=="0" (
    cecho [#RnError#Wn] Command "netinfo" not entered!
    goto :eof
)

set dncfg1=%1
if /i "%2"=="static" (
    netsh interface ip set dns !%1! static %3 >nul 2>nul
    if "!errorlevel!"=="0" (
    cecho [#GnInfo#Wn] The command was executed successfully!
    ) else (
    cecho [#RnError#Wn] The command failed to execute.
    )
    goto :eof
)

if /i "%2"=="dhcp" (netsh interface ip set dns !%1! source=dhcp >nul 2>nul
    if "!errorlevel!"=="0" (
    cecho [#GnInfo#Wn] The command was executed successfully!
    ) else (
    cecho [#RnError#Wn] The command failed to execute.
    )
    goto :eof
)

cecho [#RnError#Wn] This option is not available.