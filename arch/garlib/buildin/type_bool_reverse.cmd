@echo off
setlocal EnableDelayedExpansion
if /i "!%~1!" equ "true" (
	echo False& goto :eof
) 
if /i "!%~1!" equ "yes" (
	echo False& goto :eof
) 
if /i "!%~1!" equ "1" (
	echo False& goto :eof
) 
if /i "!%~1!" equ "false" (
	echo True& goto :eof
)
if /i "!%~1!" equ "no" (
	echo True& goto :eof
)
if /i "!%~1!" equ "0" (
	echo True& goto :eof
)
if "%~1" equ "" (
  echo True& goto :eof
) else (
  echo False& goto :eof
)
endlocal