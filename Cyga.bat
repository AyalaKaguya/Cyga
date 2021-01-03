@echo off
:::::::::: In ::::::::::
setlocal enabledelayedexpansion
set "Assembly.RuningPath=%~dp0"
set "Assembly.RuningFile=%~f0"
set "Assembly.args=%*"
set "Assembly.Name=Cyga"
set "Assembly.Version=1.0.1001"
if not "%~1"=="" (
	call :_cyga_CheckModule %~1
	if "%Module.IsInset%" == "false" (
       call :_onMissingCommand %Module.OnLoad%
		 goto :eof
	) 
	call :%~1 %~2 %~3 %~4 %~5 %~6 %~7 %~8 %~9
	goto :eof
)
color 0f
title %Assembly.Name% %Assembly.Version%
call:_main & exit 0

:::::::::: Core ::::::::::

:_main
set "cmd=*#*#uninput#*#*"
set /p cmd=^>
if "%cmd%" == "*#*#uninput#*#*" goto :_main
call :_cyga_CheckModule %cmd%
if "%Module.IsInset%" == "false" call :_onMissingCommand %Module.OnLoad% & goto :_main
set ERRORLEVEL=0
call :%cmd%
goto :_main

:::::::::: Errors ::::::::::

:_onMissingCommand
echo %1:Missing Command^!
goto :eof

:::::::::: Modules ::::::::::

:_cyga_CheckModule
set "Module.OnLoad=%1"
for /f "eol=[tokens=1,*" %%a in (' type "%~f0" ') do (
	if /i "%%a" equ ":%Module.OnLoad%" (
		set "Module.IsInset=true"
		goto :eof
	)
)
set "Module.IsInset=false"
goto :eof

:::::::::: Commands ::::::::::

:runinfo
echo %Assembly.Name% %Assembly.Version%
echo,
echo RunningPath: %Assembly.RuningPath%
echo RunningFile: %Assembly.RuningFile%
echo WorkingPath: %cd%
goto :eof

:import
if not exist "%1.gar" (
	echo import:Can`t find module^!
	goto :eof
)
call :_cyga_CheckModule _%1_init
if "%Module.IsInset%" == "true" (
    call :_%1_init
	 goto :eof
) 
type "%1.gar" >> %Assembly.RuningFile%
call :_%1_init
goto :eof

:exit
exit %*
goto:eof

:::::::::: Imports ::::::::::

