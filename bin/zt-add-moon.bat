@echo off
set moonID=%1
if not defined moonID (
   echo You must defined the moonID.
   echo Usage: %~n0 ^<moonID^>
   exit /b
)
if "%moonID%"=="default" (
   set moonID=xxxxxxxxxx
)
pushd "C:\Program Files (x86)\ZeroTier\One"
if exist "zerotier-cli.bat" ( 
   call zerotier-cli orbit %moonID% %moonID% 
) else (
   echo Can`t find ZeroTier One on you computer.
)
popd