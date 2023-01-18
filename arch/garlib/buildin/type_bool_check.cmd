@echo off
setlocal EnableDelayedExpansion
if /i "!%~1!" equ "true" (
	echo True& goto :eof
) 
if /i "!%~1!" equ "yes" (
	echo True& goto :eof
) 
if /i "!%~1!" equ "1" (
	echo True& goto :eof
) 
if /i "!%~1!" equ "false" (
	echo False& goto :eof
)
if /i "!%~1!" equ "no" (
	echo False& goto :eof
)
if /i "!%~1!" equ "0" (
	echo False& goto :eof
)
if "%~1" equ "" (
  echo False& goto :eof
) else (
  echo True& goto :eof
)
endlocal