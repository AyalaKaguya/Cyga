@echo off

if "#%1" equ "#" (
   echo CygaBox cpstr ^(BATCH^)
   echo Usage:
   echo     call cpstr A^|a ^<target:pstr^>
   echo,
   echo Output:
   echo     Converts the case of the specified string pointer.
   echo,
   echo Example:
   echo     var str "Hello,World^!"
   echo     log str
   echo     cpchr A str
   echo     log str
   goto:eof
)

:cpstr <mode:str> <target:pstr>
if defined %~2 (
	if "%~1"=="a" >nul ( for %%i in (a b c d e f g h i j k l m n o p q r s t u v w x y z) do call set "%~2=%%%~2:%%i=%%i%%" )
	if "%~1"=="A" >nul ( for %%i in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) do call set "%~2=%%%~2:%%i=%%i%%" )
)
goto:eof