@echo off
setlocal EnableDelayedExpansion

if not "!netout!"=="0" (
    cecho [#RnError#Wn] Command "netinfo" not entered!
    goto :eof
)

if /i "%1"=="off" (
    netsh int set int name=!%2! admin=disable >nul 2>nul
    if "!errorlevel!"=="0" (
    cecho [#GnInfo#Wn] Disabled?!%2!
    cecho [#GnInfo#Wn] The command was executed successfully!
    ) else (
    cecho [#RnError#Wn] The command failed to execute.
    )
    goto :eof
)

if /i "%1"=="re" (
    netsh int set int name=!%2! admin=disable >nul 2>nul
    if "!errorlevel!"=="0" (
    cecho [#GnInfo#Wn] Disabled?!%2!
    cecho [#GnInfo#Wn] The command was executed successfully!
    ) else (
    cecho [#RnError#Wn] The command failed to execute.
    )
    netsh int set int name=!%2! admin=enable >nul 2>nul
    if "!errorlevel!"=="0" (
    cecho [#GnInfo#Wn] Enabled?!%2!
    cecho [#GnInfo#Wn] The command was executed successfully!
    ) else (
    cecho [#RnError#Wn] The command failed to execute.
    )
    goto :eof
)

if /i "%1"=="on" (
    netsh int set int name=!%2! admin=enable >nul 2>nul
    if "!errorlevel!"=="0" (
    cecho [#GnInfo#Wn] Enabled?!%2!
    cecho [#GnInfo#Wn] The command was executed successfully!
    ) else (
    cecho [#RnError#Wn] The command failed to execute.
    )
    goto :eof
)

cecho [#RnError#Wn] This option is not available.