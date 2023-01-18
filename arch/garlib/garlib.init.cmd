@echo off
set "PATH=%~dp0;%~dp0\runtime;%~dp0\buildin;%PATH%"
set "_gfl.var=2.3"
set "_gfl.path=%~dp0"
set "_gfl.power=Gardens Framework Library (GFL)"
del /q "%~dp0\runtime\*"
echo garlib:Already enabled
echo %_gfl.power% v%_gfl.var%
set "Cyga_Enable_garlib=True"