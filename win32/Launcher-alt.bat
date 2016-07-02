@echo off
cd ..

rem Read the contents of PPYTHON_PATH into %PPYTHON_PATH%:
set PPYTHON_PATH="C:\Panda3D-1.9.0\python\ppython.exe"

rem Get the user input:
set /P ttiUsername="Username: "

set /P ttiPassword="password: "
rem Export the environment variables:
set TTI_PLAYCOOKIE=%ttiUsername%:%ttiPassword%
set TTI_GAMESERVER=ttpserver.no-ip.info

echo ===============================
echo Starting Toontown Infinite...
echo ppython: %PPYTHON_PATH%
echo Username: %ttiUsername%
echo Gameserver: %TTI_GAMESERVER%
echo ===============================

%PPYTHON_PATH% -m toontown.toonbase.ClientStart
pause
