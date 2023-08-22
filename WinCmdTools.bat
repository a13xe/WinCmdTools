@echo off


:menu
cls
echo ===============================
echo Windows Console Tools
echo ===============================
echo Choose an option:
echo [1] Check System Information
echo [2] Display IP Configuration
echo [3] Display User Accounts
echo [4] Check Network Connections
echo [5] Show Firewall Status
echo [0] Exit
echo ===============================
set /p option=Choose an option: 
if "%option%"=="1" goto sysinfo
if "%option%"=="2" goto ipconfig
if "%option%"=="3" goto useraccounts
if "%option%"=="4" goto networkconnections
if "%option%"=="5" goto firewallstatus
if "%option%"=="0" goto exit
echo Invalid Option, Press any key to return to the menu.
pause
goto menu


:sysinfo
systeminfo
pause
goto menu


:ipconfig
ipconfig /all
pause
goto menu


:useraccounts
net user
pause
goto menu


:networkconnections
netstat -an
pause
goto menu


:firewallstatus
netsh advfirewall show allprofiles
pause
goto menu


:exit
echo Bye /0w0|                                   
timeout /t 1 /nobreak
exit
