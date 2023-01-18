@echo off
if not "%1"=="" ( call "%_gfl.path%\prototype\bool.proto.cmd" new %1 %2 ) else echo ^<Bool Object^>