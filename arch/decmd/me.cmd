@echo off
setlocal EnableDelayedExpansion

for %%C in (deusername deuseractive deuserout deuserpsout deuserps deusercfg deuserlogin deusergroup) do (set "%%C=")


for /f "tokens=1-2* delims= " %%A in ('net user !username!') do (
    if "%%A"=="用户名" set "deusername=%%B"
    if "%%A"=="帐户启用" set "deuseractive=%%B"
    if "%%A"=="帐户到期" set "deuserout=%%B"
    if "%%A"=="密码到期" set "deuserpsout=%%B"
    if "%%A"=="用户可以更改密码" set "deuserps=%%B"
    if "%%A"=="用户配置文件" set "deusercfg=%%B"
    if "%%A"=="上次登录" set "deuserlogin=%%B"
    if "%%A"=="本地组成员" set "deusergroup=%%B"
)


if "!deuseractive!"=="Yes" (
    set "useract=#Gn!deuseractive!#Wn"
) else (
    set "useract=#Rn!deuseractive!#Wn")


cecho [#CnUserName#Wn]  !deusername! #_ [#CnState#Wn]     !useract! #_ [#CnPsTerm#Wn]    !deuserout! #_ [#CnPsExpire#Wn]  !deuserpsout! #_ [#CnPsChange#Wn]  !deuserps! #_ [#CnLastLogin#Wn] !deuserlogin! #_ [#CnFastGroup#Wn] !deusergroup! #_ [#CnCfgPath#Wn]   !deusercfg!  

endlocal