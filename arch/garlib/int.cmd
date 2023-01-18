@echo off
if not "%1"=="" ( call "%_gfl.path%\prototype\int.proto.cmd" new %1 %2 ) else echo ^<Int Object^>