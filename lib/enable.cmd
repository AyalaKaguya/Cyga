@echo off
set "Cyga_Flag=%1"
if not defined Cyga_Path goto :eof
if defined Cyga_Flag (
   if not defined Cyga_Enable_%Cyga_Flag% (
       if exist "%Cyga_Path%\arch\%Cyga_Flag%\" (
          call %Cyga_Path%\arch\%Cyga_Flag%\%Cyga_Flag%.init.cmd
       ) else (
          echo enable: Module not found.
       )
   ) else (
       echo enable: Module "%Cyga_Flag%" already enabled.
   )
) else (
   echo enable: Lists all available modules
   dir /AD /B "%Cyga_Path%\arch\"
)