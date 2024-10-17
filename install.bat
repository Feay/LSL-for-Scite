@echo off
set mydir=Scite
:BEGIN
CLS
cd
color 8F
choice.exe /c 63ce /m "64bit install, 32bit install, or Copy_Files or Exit?"
IF ERRORLEVEL ==4 GOTO END
IF ERRORLEVEL ==3 GOTO THREE
IF ERRORLEVEL ==2 GOTO TWO
IF ERRORLEVEL ==1 GOTO ONE
GOTO END
:THREE
ECHO Just copy the files but which lslinit?
choice.exe /c 63 /m "64bit install, 32bit install, or Go_back?"
IF ERRORLEVEL ==2 GOTO A
IF ERRORLEVEL ==1 GOTO B
GOTO BEGIN
:TWO
ECHO YOU HAVE PRESSED 32bit
start "" "scite-5.4.1x86.msi"
GOTO B
:ONE
ECHO YOU HAVE PRESSED 64bit
start "" "scite-5.4.1x64.msi"
GOTO A
:END
echo I was here and now i am long gone 
pause
exit
:NUPE
echo waiting for %ProgramData%\%mydir% to exist...
timeout /T 10
CLS
GOTO %myvar%
:A
set myvar=A
color 8b
echo ready to copy files into %ProgramData%\%mydir%
IF NOT EXIST %ProgramData%\%mydir% GOTO NUPE
pause
copy lslint.64.exe temp.exe
move temp.exe lslint.exe
GOTO :C
:B
set myvar=B
color 8b
echo ready to copy files into %ProgramData%\%mydir%
IF NOT EXIST %ProgramData%\%mydir% GOTO NUPE
pause
copy lslint.32.exe temp.exe
move temp.exe lslint.exe
GOTO :C
:C
cls
@echo on
copy /Y lslint.exe %ProgramData%\%mydir%\lslint.exe
copy /Y lsl.api %ProgramData%\%mydir%\lsl.api
copy /Y lsl.properties %ProgramData%\%mydir%\lsl.properties
cd %ProgramData%\%mydir%
dir /p
color 0F
echo DONE
pause
exit