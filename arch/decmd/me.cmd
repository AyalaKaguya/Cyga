@echo off
setlocal EnableDelayedExpansion

for %%C in (deusername deuseractive deuserout deuserpsout deuserps deusercfg deuserlogin deusergroup) do (set "%%C=")


for /f "tokens=1-2* delims= " %%A in ('net user !username!') do (
    if "%%A"=="�û���" set "deusername=%%B"
    if "%%A"=="�ʻ�����" set "deuseractive=%%B"
    if "%%A"=="�ʻ�����" set "deuserout=%%B"
    if "%%A"=="���뵽��" set "deuserpsout=%%B"
    if "%%A"=="�û����Ը�������" set "deuserps=%%B"
    if "%%A"=="�û������ļ�" set "deusercfg=%%B"
    if "%%A"=="�ϴε�¼" set "deuserlogin=%%B"
    if "%%A"=="�������Ա" set "deusergroup=%%B"
)


if "!deuseractive!"=="Yes" (
    set "useract=#Gn!deuseractive!#Wn"
) else (
    set "useract=#Rn!deuseractive!#Wn")


cecho [#CnUserName#Wn]  !deusername! #_ [#CnState#Wn]     !useract! #_ [#CnPsTerm#Wn]    !deuserout! #_ [#CnPsExpire#Wn]  !deuserpsout! #_ [#CnPsChange#Wn]  !deuserps! #_ [#CnLastLogin#Wn] !deuserlogin! #_ [#CnFastGroup#Wn] !deusergroup! #_ [#CnCfgPath#Wn]   !deusercfg!  

endlocal