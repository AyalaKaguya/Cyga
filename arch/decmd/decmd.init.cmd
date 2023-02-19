@echo off
if defined Cyga_Flag_SafeMode (
    echo decmd:Error^(Can not use decmd in SafeMode^!^)
    goto :eof
)

set "PATH=%~dp0;%PATH%"
cecho [#Gndecmd#Wn]: Already enabled
set "Cyga_Enable_decmd=True"