@echo off
set "Cyga_Version=v2.2a"
set "Cyga_Flag=%*"
set "Cyga_Path=%~dp0"
if defined Cyga_Flag (
    if "%Cyga_Flag%"=="-safemode" set "Cyga_Flag_SafeMode=True"
)

echo Your environment has been set up for using Cyga %Cyga_Version%.
echo Cyga tools (C) TePuint Club 2023

if defined Cyga_Flag_SafeMode (
   echo. & echo Safe Mode: Isolated from the original CMD
   title Cyga tools environment ^| %Cyga_Version% Safe-Mode
   set "PATH=%Cyga_Path%\bin;%Cyga_Path%\lib;%Cyga_Path%"
) else (
   title Cyga tools environment ^| %Cyga_Version%
   set "PATH=%PATH%;%Cyga_Path%\bin;%Cyga_Path%\lib;%Cyga_Path%"
)

if exist "%Cyga_Path%\uservars.bat" call "%Cyga_Path%\uservars.bat"

if "%CD%\"=="%Cyga_Path%" cd /d "%HOMEDRIVE%%HOMEPATH%"
