@echo off
:log <var:pstr>
setlocal EnableDelayedExpansion
set/p=!%~1!<nul
endlocal&goto:eof