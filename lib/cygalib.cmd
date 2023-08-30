@echo off
if not "#%*"=="#" call :%* &exit /b
echo Cyga %Cyga_Version%
exit /b

:set_title
if "#%Cyga_Flag_SafeMode%" == "#True" (
   title %username%@Cyga ^| %Cyga_Version% Safe-Mode
) else (
   title %username%@Cyga ^| %Cyga_Version%
)
goto:eof

:set_prompt
prompt %username%@$P$$
goto:eof

:set_prompt_cmd
prompt $P$G
goto:eof