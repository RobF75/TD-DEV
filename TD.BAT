@echo off

for %%a in (%1) do SET DEVPATH=%%~dpa
set STOCKDEV=C:\DEV\STOCKDEV\
set FLEMDEV=C:\DEV\FLEMDEV\

if [%DEVPATH%] == [] ( 
echo Please right click on the file you want to use and 'Open With" TD.bat or from command line type td.bat prog.app 
pause 
goto :end )

REM ** TD STARTUP FILE ***************************************
REM
REM Change the next lines to your TD version (up to cls command)
REM Change/add custom locations for sources and resources
REM
REM BEWARE : set the values correctly, specially TDREGISTRYLOC
REM This setting will insert the configured PATHs in registry
REM
REM **********************************************************

set PROGFOLDER=C:\Program Files
IF EXIST "C:\Program Files (x86)" set PROGFOLDER=C:\Program Files (x86)

set TDVERSION=TD5.2
set TDEXE=cbi52.exe

set TDINSTALL=C:\Program Files (x86)\Unify\Team Developer 5.2
set TDRUNTIME=C:\Program Files (x86)\Unify\Team Developer 5.2
set TDREGISTRYLOC=HKCU\Software\Unify\SQLWindows 5.2\Settings

set RESFOLDER1=C:\CENTURA\LOGOS;C:\CENTURA\ICONS
set APPRUNTIME=C:\DEV\;c:\centura\localexe;c:\dev\dynalibs

if [%DEVPATH%]==[%STOCKDEV%] (
echo stockdev
set SRCFOLDER1=C:\DEV;C:\DEV\stockdev;C:\DEV\COMMONAPLS
)

if [%DEVPATH%]==[%FLEMDEV%] (
echo flemdev
set SRCFOLDER1=C:\DEV;C:\DEV\FLEMDEV;C:\DEV\CLASS;C:\DEV\FLEMAPLS;C:\DEV\COMMONAPLS
)

set TDREGISTRYVAL=%SRCFOLDER1%;%RESFOLDER1%;%TDINSTALL%


echo ===================================================
echo Preparing %TDVERSION% environment...
echo For "%DEVPATH%"
echo Batch parameter = %1
echo ===================================================
echo.
echo Source Folder %SRCFOLDER1%
echo RegvAl %TDREGISTRYVAL%


REM "If the file contains .exe it will be opened as an executable, otherwise we assume it is a TD source file"

echo %1 | find ".exe"
if errorlevel 1 goto :not-found-exe

REM ********* TD IDE *********
:foundexe
PATH = %TDRUNTIME%;%PATH%
PATH = %APPRUNTIME%;%PATH%

echo.
echo PATH set to:
echo %TDRUNTIME%
echo %APPRUNTIME%

echo.
echo Starting %1...

set DRIVE=%APPRUNTIME:~0,2%

%DRIVE%
CD %APPRUNTIME%

%1

goto :end



REM ********* START TD EXE *********

:not-found-exe
PATH = %TDINSTALL%\axis2c\lib;%PATH%
PATH = %TDINSTALL%;%PATH%

PATH = %APPRUNTIME%;%PATH%
PATH = %SRCFOLDER1%;%PATH%
PATH = %RESFOLDER1%;%PATH%

echo Set registry TD IncludePath:
REG ADD "%TDREGISTRYLOC%" /v IncludePath /t REG_SZ /d "%TDREGISTRYVAL%" /f

echo.
echo PATH set to:
echo %TDINSTALL%
echo %APPRUNTIME%
echo %SRCFOLDER1%
echo %RESFOLDER1%

echo.
echo Starting %TDVERSION% IDE...
start %TDEXE% %1
exit

:end

exit




