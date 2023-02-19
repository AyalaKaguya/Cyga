@echo off
echo.
echo  ===Date=====Time=====Type=====Size==========Owner==========File==========
echo.
for /f "delims=; eol= " %%x in ('dir /n /q %* ^| find "<DIR>"') do cecho #Yn%%x
for /f "delims=; eol= " %%y in ('dir /n /q %* ^| find /V "<DIR>"') do cecho #Cn%%y
echo.