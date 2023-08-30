@echo off
set "Cyga_Path_Backup_CMD=%PATH%"
for %%j in ("%~1" "%~2" "%~3" "%~4") do (
    if "%%~j"=="--strict" set "PATH=%Cyga_Path_Backup%"
    if "%%~j"=="--help" (
        echo Built-in CMD agent script
        echo.
        echo     --strict        Strictly convert the environment
        echo.
        echo Inherit the vanilla feature and use 'CMD /? ' Consult the corresponding help.
        goto:eof
    )
)
if defined Cyga_Flag_SafeMode (
    echo [WARN] You are trying to open CMD in safe mode, which may not be as expected.
    echo.
)
title %ComSpec%
call cygalib set_prompt_cmd
%ComSpec% %*
call cygalib set_title
call cygalib set_prompt
set "PATH=%Cyga_Path_Backup_CMD%"
set "Cyga_Path_Backup_CMD="
echo You're now back in Cyga's environment