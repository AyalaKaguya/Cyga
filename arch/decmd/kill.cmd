@echo off

for %%A in (%*) do (
    taskkill /f /im "%%A" >nul 2>nul
    if "!errorlevel!"=="0" (
        cecho  [#CnInfo#Wn] Kill process:%%A successful.
    ) else (
        cecho  [#RnError#Wn] Kill process:%%A failed.
    )
)