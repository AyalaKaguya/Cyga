@echo off

if /i "%1"=="off" (
    cecho [#GnInfo#Wn] Shutting down...
    shutdown -s -t 0
    goto :eof
)

if /i "%1"=="re" (
    cecho [#GnInfo#Wn] Restarting...
    shutdown -r -t 0
    goto :eof
)
    
cecho [#RnError#Wn] This option is not available.