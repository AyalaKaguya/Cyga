@echo off
setlocal EnableDelayedExpansion

if /i "%1"=="release" (
    ipconfig /release >nul 2>nul
    if "!errorlevel!"=="0" (cecho [#GnInfo#Wn] The command was executed successfully!) else (cecho [#RnError#Wn] The command failed to execute.)
    goto :eof
)

if /i "%1"=="ipreget" (
    ipconfig /renew >nul 2>nul
    if "!errorlevel!"=="0" (cecho [#GnInfo#Wn] The command was executed successfully!) else (cecho [#RnError#Wn] The command failed to execute.)
    goto :eof
)

if /i "%1"=="flush" (
    ipconfig /release >nul 2>nul
    if "!errorlevel!"=="0" (cecho [#GnInfo#Wn] The command was executed successfully!) else (cecho [#RnError#Wn] The command failed to execute.)
    ipconfig /renew >nul 2>nul
    if "!errorlevel!"=="0" (cecho [#GnInfo#Wn] The command was executed successfully!) else (cecho [#RnError#Wn] The command failed to execute.)
    goto :eof
)

if /i "%1"=="fldns" (
    ipconfig /flushdns >nul 2>nul
    if "!errorlevel!"=="0" (cecho [#GnInfo#Wn] The command was executed successfully!) else (cecho [#RnError#Wn] The command failed to execute.)
    goto :eof
)

endlocal && (
    set "dnsa=0"
    set "netout=0"
    set "n=0"
    echo.
    for /f "tokens=1,3 delims=," %%F in ('Getmac /v /nh /fo csv') do (
        set /a n+=1
        set "name=%%F"
        set "nmac=%%G"
        for /f "tokens=3" %%A in ('netsh interface ip show address !name! ^| find "IP"') do (set nip=%%A) 
        for /f "tokens=2" %%B in ('netsh interface ip show address !name! ^| find "掩码"') do (set nmask=%%B) 
        for /f "tokens=2" %%C in ('netsh interface ip show address !name! ^| find "默认网关"') do (set ngate=%%C) 
        for /f "tokens=4" %%D in ('netsh interface ip show dnsservers !name! ^| find "静态配置的 DNS 服务器"') do set dns=%%D
        for /f "tokens=6" %%E in ('netsh interface ip show dnsservers !name! ^| find "通过 DHCP 配置的 DNS 服务器"') do set dns=%%E
        for /f "tokens=1" %%u in ('netsh interface show interface ^| find !name!') do (
            if "%%u"=="已启用" cecho  [#GnON#Wn]  #Wn[#GnNet!n!#Wn] "!name:"=!" #Wn[#CnMac#Wn] !nmac:"=! #Wn[#CnIP#Wn] !nip! #Wn[#CnNetmask#Wn] !nmask! #Wn[#CnGateway#Wn] !ngate! #Wn[#CnDns#Wn] !dns!
            if "%%u"=="已禁用" cecho  [#RnOFF#Wn] #Wn[#GnNet!n!#Wn] "!name:"=!" #Wn[#CnMac#Wn] !nmac:"=! #Wn[#CnIP#Wn] !nip! #Wn[#CnNetmask#Wn] !nmask! #Wn[#CnGateway#Wn] !ngate! #Wn[#CnDns#Wn] !dns!
        )
        set "Net!n!="!name:"=!""
    )
    echo.
)