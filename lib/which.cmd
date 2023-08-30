@echo off
rem @where %* 2>nul && @goto :eof

if "#%1" equ "#" (
   echo CygaBox which ^(BATCH^)
   echo Usage:
   echo     which ^<progName^>
   echo,
   echo Output:
   echo     Query the location of the executable file.
   echo,
   echo Example:
   echo     which which
   goto:eof
)

setlocal enableextensions enabledelayedexpansion
set fullspec=
call :find_it %1
set mypathext=!pathext!
:loop1
if "x!mypathext!"=="x" goto :loop1end
for /f "delims=;" %%j in ("!mypathext!") do set myext=%%j
call :find_it %1!myext!
:loop2
if not "x!myext!"=="x" (
    set myext=!myext:~1!
    set mypathext=!mypathext:~1!
    goto :loop2
)
if not "x!mypathext!"=="x" set mypathext=!mypathext:~1!

goto :loop1
:loop1end

:end
endlocal
goto :eof

:find_it
for %%i in (%1) do set fullspec=%%~$PATH:i
if not "x!fullspec!"=="x" @echo.!fullspec!
goto :eof