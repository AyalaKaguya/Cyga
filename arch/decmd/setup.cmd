@echo off

if /i "%1"=="folder" (
    md "%2" >nul 2>nul
    if "!errorlevel!"=="0" (
        cecho  [#CnInfo#Wn] Folder created successfully.
    ) else (
        cecho  [#RnError#Wn] Failed to create folder.
    )
    goto :eof
)

if /i "%1"=="file" (
    echo. >%2
    cecho  [#CnInfo#Wn] Create file:%2
    goto :eof
)

if /i "%1"=="del" (
    del /f /s /q "%2" >nul 2>nul
    cecho  [#CnInfo#Wn] Delete file:%2
    goto :eof
)

if /i "%1"=="unfolder" (
    rd /s /q "%2" >nul 2>nul
    goto :eof
)

if /i "%1"=="txt" (
    notepad "%2"
    goto :eof
)

cecho [#RnError#Wn] This option is not available.