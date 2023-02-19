@echo off
rem Cyga envs
set "Cyga_Version=v2.2a"
set "Cyga_Flag=%*"
rem Some Path dirs
set "Cyga_WorkDir=%~dp0"
set "Cyga_BinDir=%~dp0bin%"
set "Cyga_LibDir=%~dp0lib"
rem Backup of raw path
set "Cyga_Path_Backup=%PATH%"

for %%j in ("%~1" "%~2") do (
    if "%%~j"=="-safemode" set "Cyga_Flag_SafeMode=True"
)

echo Your environment has been set up for using Cyga %Cyga_Version%.
echo Cyga tools (C) TePuint Club 2023

if defined Cyga_Flag_SafeMode (
   echo. & echo Safe Mode: Isolated from the original CMD
   title Cyga tools environment ^| %Cyga_Version% Safe-Mode
   set "PATH=%Cyga_LibDir%;%Cyga_BinDir%"
) else (
   title Cyga tools environment ^| %Cyga_Version%
   set "PATH=%PATH%;%Cyga_LibDir%;%Cyga_BinDir%"
)

if exist "%Cyga_WorkDir%\uservars.bat" call "%Cyga_WorkDir%\uservars.bat"

if "%CD%\"=="%Cyga_WorkDir%" cd /d "%HOMEDRIVE%%HOMEPATH%"
