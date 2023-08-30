@echo off
set "Cyga_Version=v2.5"
set "Cyga_Flag=%*"
set "Cyga_WorkDir=%~dp0"
set "Cyga_BinDir=%~dp0bin%"
set "Cyga_LibDir=%~dp0lib"
set "Cyga_Path_Backup=%PATH%"

for %%j in (%Cyga_Flag%) do (
    if "%%~j"=="--safemode" set "Cyga_Flag_SafeMode=True"
)

echo Your environment has been set up for using Cyga %Cyga_Version%.
echo Cyga %Cyga_Version% (C) TePuint Club 2023

if "#%Cyga_Flag_SafeMode%" == "#True" (
   echo. & echo Safe Mode: Isolated from the original CMD
   set "PATH=%Cyga_LibDir%;%Cyga_BinDir%"
) else (
   set "PATH=%PATH%;%Cyga_LibDir%;%Cyga_BinDir%"
)

call cygalib set_title
call cygalib set_prompt

pushd %~dp0
if exist "%Cyga_WorkDir%\uservars.bat" call "%Cyga_WorkDir%\uservars.bat"
popd

if "%CD%\"=="%Cyga_WorkDir%" cd /d "%HOMEDRIVE%%HOMEPATH%"
