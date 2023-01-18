@echo off
if not "%1"=="" ( call "%_gfl.path%\prototype\string.proto.cmd" new %1 %2 ) else echo ^<String Object^>