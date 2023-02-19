@echo off

setlocal EnableDelayedExpansion
if /i "%1"=="on" (
    sc start %2 >nul 2>nul 
    if "!errorlevel!"=="0" (
         cecho  [#CnInfo#Wn] Service:%2 successfully opened.
    ) else (
         cecho  [#RnError#Wn] Service:%2 failed to open.)
     goto :eof
)

if /i "%1"=="off" (
    sc stop %2 >nul 2>nul 
    if "!errorlevel!"=="0" (
        cecho  [#CnInfo#Wn] Service:%2 closed successfully.
    ) else (
        cecho  [#RnError#Wn] Service:%2 shutdown failed.)
    goto :eof
)

if /i "%1"=="re" (
    sc stop %2 >nul 2>nul 
    if "!errorlevel!"=="0" (
        cecho  [#CnInfo#Wn] Service:%2 closed successfully.
    ) else (
        cecho  [#RnError#Wn] Service:%2 shutdown failed.)
    sc start %2 >nul 2>nul 
    if "!errorlevel!"=="0" (
        cecho  [#CnInfo#Wn] Service:%2 successfully opened.
    ) else (
        cecho  [#RnError#Wn] Service:%2 failed to open.)
    goto :eof
)

cecho [#RnError#Wn] This option is not available.