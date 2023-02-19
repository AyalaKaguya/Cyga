@echo off

setlocal EnableDelayedExpansion
for /f "tokens=2 delims=: " %%O in ('sc query %* ^| find "SERVICE_NAME"') do (
    set sername=%%O
    for /f "tokens=3 delims=: " %%P in ('sc query %%O ^| find "STATE"') do (
        set state=%%P
        for /f "tokens=2 delims=:" %%Q in ('sc qc %%O ^| find "DISPLAY_NAME"') do (
            set disname=%%Q
            for /f "delims=; tokens=1" %%R in ('sc qc %%O ^| find "BINARY_PATH_NAME"') do (
                set serpath=%%R
                if "!state!"=="RUNNING" (
                    cecho  [#CnStatus#Wn] #Gn!state! #Wn[#CnServerName#Wn] #Yn!sername! #Wn[#CnDisplayName#Wn] !disname! [#CnRunPath#Wn]!serpath:        BINARY_PATH_NAME   :=!
                ) else (
                    cecho  [#CnStatus#Wn] #Rn!state! #Wn[#CnServerName#Wn] #Yn!sername! #Wn[#CnDisplayName#Wn] !disname! [#CnRunPath#Wn]!serpath:        BINARY_PATH_NAME   :=!
                )
            )
        )
    )
)
endlocal