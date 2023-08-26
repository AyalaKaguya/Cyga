@echo off
:var <var:point> <val:value>
setlocal EnableDelayedExpansion
endlocal&(
    set "%~1=%~2"
)&goto:eof