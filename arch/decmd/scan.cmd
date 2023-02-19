@echo off
setlocal EnableDelayedExpansion

set "sttime=0"
set "pingnum=4"
set "pingsize=32"
if "%*"=="" (cecho [#RnError#Wn] #WnAddress not specified.) else (
for /f "tokens=1-6 delims= " %%A in ("%*") do (
if /i "%%B"=="to" (if "%%C"=="" (cecho [#RnError#Wn] #RnDestination not specified.) else (
for /f "delims=. tokens=1-4" %%T in ("%%A") do (
set "ipnet=%%T.%%U.%%V"
set "ipfast=%%W"
)
cecho [#CnNetwork segment#Wn] #Yn!ipnet! #Wn[#CnStart IP#Wn] #Yn%%A #Wn[#CnEnd IP#Wn] #Yn%%C
for /l %%X in (!ipfast!,1,%%C) do (
for /f "tokens=1,2,3,4,5,6,7,8,9 delims==,(, " %%K in ('ping -n 1 !ipnet!.%%X') do (
set "head=%%K"
set "head2=!head: =!"
if "%%N"=="?????????" (
cecho [#CnIP#Wn] #Yn!ipnet!.%%X #Wn[#CnInfo#Wn] #RnAccess failed.
) else ( 
if "%%L"=="???????" (
cecho [#CnIP#Wn] #Yn!ipnet!.%%X #Wn[#CnInfo#Wn] #RnUnable to find the host, please check that the address is correct.
) else (
if "!head2:~0,4!"=="????" (
cecho [#CnIP#Wn] #Yn!ipnet!.%%X #Wn[#CnInfo#Wn] #RnGeneral failure.
) else (
if "!head2:~0,4!"=="????" (
cecho [#CnIP#Wn] #Yn!ipnet!.%%X #Wn[#CnInfo#Wn] #RnTimeout.
) else (
if "!head:~0,2!"=="??" (
set "pingtimes=%%P"
if "%%P"=="??" (
cecho [#CnIP#Wn] #Yn!ipnet!.%%X #Wn[#CnSize#Wn] #Yn%%O #Wn[#CnTime#Wn] #Yn%%Q #Wn[#CnTTL#Wn] #Yn%%S
) else (
cecho [#CnIP#Wn] #Yn!ipnet!.%%X #Wn[#CnSize#Wn] #Yn%%O #Wn[#CnTime#Wn] #Yn!pingtimes:??=! #Wn[#CnTTL#Wn] #Yn%%R)
)
)
)
)
)
)
)
)
) 
if /i not "%%B"=="to" (
if "%%B"=="" (
cecho [#CnInfo#Wn] Executing, please wait: 4 seconds.
for /f "tokens=1,2,3,4,5,6,7,8,9 delims==,(, " %%K in ('ping %%A') do (
set "head=%%K"
set "head2=!head: =!"
if "%%N"=="?????????" (
cecho [#CnIP#Wn] #Yn%%A #Wn[#CnInfo#Wn] #RnAccess failed.
) else ( 
if "%%L"=="???????" (
cecho [#CnIP#Wn] #Yn%%A #Wn[#CnInfo#Wn] #RnUnable to find the host, please check that the address is correct.
) else (
if "!head2:~0,4!"=="????" (
cecho [#CnIP#Wn] #Yn%%A #Wn[#CnInfo#Wn] #RnGeneral failure.
) else (
if "!head2:~0,4!"=="????" (
cecho [#CnIP#Wn] #Yn%%A #Wn[#CnInfo#Wn] #RnTimeout.
) else (
if "!head:~0,2!"=="??" (
set "pingtimes=%%P"
if "%%P"=="??" (
cecho [#CnIP#Wn] #Yn%%A #Wn[#CnSize#Wn] #Yn%%O #Wn[#CnTime#Wn] #Yn%%Q #Wn[#CnTTL#Wn] #Yn%%S
) else (
cecho [#CnIP#Wn] #Yn%%A #Wn[#CnSize#Wn] #Yn%%O #Wn[#CnTime#Wn] #Yn!pingtimes:??=! #Wn[#CnTTL#Wn] #Yn%%R)
)
if "!head2:~0,3!"=="???" (
set "pkgall=%%M"
set "pkgrec=%%N"
set "pkgfal=%%O"
set "pkgper=%%P"
cecho [#CnPagAll#Wn] #Yn!pkgall:????=! #Wn[#CnPagAccept#Wn] #Yn!pkgrec:???=! #Wn[#CnPagFail#Wn] #Yn!pkgfal! #Wn[#CnLoss#Wn] #Yn!pkgper! 
)
if "%%K"=="??" (
set "speedshort=%%L"
set "speedlong=%%M"
set "spaverage=%%N"
cecho [#CnSPShort#Wn] #Yn!speedshort:???=! #Wn[#CnSPLong#Wn] #Yn!speedlong:???=! #Wn[#CnSPAverage#Wn] #Yn!spaverage!
)
)
)
)
)
)
) else (if "%%C"=="" (
set /a "sttime=%%B*1"
cecho [#CnInfo#Wn] Executing, please wait: !sttime! seconds.
for /f "tokens=1,2,3,4,5,6,7,8,9 delims==,(, " %%K in ('ping %%A -n %%B') do (
set "head=%%K"
set "head2=!head: =!"
if "%%N"=="?????????" (
cecho [#CnIP#Wn] #Yn%%A #Wn[#CnInfo#Wn] #RnAccess failed.
) else ( 
if "%%L"=="???????" (
cecho [#CnIP#Wn] #Yn%%A #Wn[#CnInfo#Wn] #RnUnable to find the host, please check that the address is correct.
) else (
if "!head2:~0,4!"=="????" (
cecho [#CnIP#Wn] #Yn%%A #Wn[#CnInfo#Wn] #RnGeneral failure.
) else (
if "!head2:~0,4!"=="????" (
cecho [#CnIP#Wn] #Yn%%A #Wn[#CnInfo#Wn] #RnTimeout.
) else (
if "!head:~0,2!"=="??" (
set "pingtimes=%%P"
if "%%P"=="??" (
cecho [#CnIP#Wn] #Yn%%A #Wn[#CnSize#Wn] #Yn%%O #Wn[#CnTime#Wn] #Yn%%Q #Wn[#CnTTL#Wn] #Yn%%S
) else (
cecho [#CnIP#Wn] #Yn%%A #Wn[#CnSize#Wn] #Yn%%O #Wn[#CnTime#Wn] #Yn!pingtimes:??=! #Wn[#CnTTL#Wn] #Yn%%R)
)
if "!head2:~0,3!"=="???" (
set "pkgall=%%M"
set "pkgrec=%%N"
set "pkgfal=%%O"
set "pkgper=%%P"
cecho [#CnPagAll#Wn] #Yn!pkgall:????=! #Wn[#CnPagAccept#Wn] #Yn!pkgrec:???=! #Wn[#CnPagFail#Wn] #Yn!pkgfal! #Wn[#CnLoss#Wn] #Yn!pkgper! 
)
if "%%K"=="??" (
set "speedshort=%%L"
set "speedlong=%%M"
set "spaverage=%%N"
cecho [#CnSPShort#Wn] #Yn!speedshort:???=! #Wn[#CnSPLong#Wn] #Yn!speedlong:???=! #Wn[#CnSPAverage#Wn] #Yn!spaverage!
)
)
)
)
)
)
) else (
set /a "sttime=%%B*1"
cecho [#CnInfo#Wn] Executing, please wait: !sttime! seconds.
for /f "tokens=1,2,3,4,5,6,7,8,9 delims==,(, " %%K in ('ping %%A -n %%B -l %%C') do (
set "head=%%K"
set "head2=!head: =!"
if "%%N"=="?????????" (
cecho [#CnIP#Wn] #Yn%%A #Wn[#CnInfo#Wn] #RnAccess failed.
) else ( 
if "%%L"=="???????" (
cecho [#CnIP#Wn] #Yn%%A #Wn[#CnInfo#Wn] #RnUnable to find the host, please check that the address is correct.
) else (
if "!head2:~0,4!"=="????" (
cecho [#CnIP#Wn] #Yn%%A #Wn[#CnInfo#Wn] #RnGeneral failure.
) else (
if "!head2:~0,4!"=="????" (
cecho [#CnIP#Wn] #Yn%%A #Wn[#CnInfo#Wn] #RnTimeout.
) else (
if "!head:~0,2!"=="??" (
set "pingtimes=%%P"
if "%%P"=="??" (
cecho [#CnIP#Wn] #Yn%%A #Wn[#CnSize#Wn] #Yn%%O #Wn[#CnTime#Wn] #Yn%%Q #Wn[#CnTTL#Wn] #Yn%%S
) else (
cecho [#CnIP#Wn] #Yn%%A #Wn[#CnSize#Wn] #Yn%%O #Wn[#CnTime#Wn] #Yn!pingtimes:??=! #Wn[#CnTTL#Wn] #Yn%%R)
)
if "!head2:~0,3!"=="???" (
set "pkgall=%%M"
set "pkgrec=%%N"
set "pkgfal=%%O"
set "pkgper=%%P"
cecho [#CnPagAll#Wn] #Yn!pkgall:????=! #Wn[#CnPagAccept#Wn] #Yn!pkgrec:???=! #Wn[#CnPagFail#Wn] #Yn!pkgfal! #Wn[#CnLoss#Wn] #Yn!pkgper! 
)
if "%%K"=="??" (
set "speedshort=%%L"
set "speedlong=%%M"
set "spaverage=%%N"
cecho [#CnSPShort#Wn] #Yn!speedshort:???=! #Wn[#CnSPLong#Wn] #Yn!speedlong:???=! #Wn[#CnSPAverage#Wn] #Yn!spaverage!
)
)
)
)
)
)
)
)
)
)
)
goto :eof
