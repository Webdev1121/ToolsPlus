@echo off
:ask
cls
color a
echo ==========================================================================================
echo ========================================= Tools+ =========================================
echo ==========================================================================================
systeminfo | findstr /B /C:"OS Name" /C:"OS Version"
wmic ComputerSystem get TotalPhysicalMemory && wmic OS get FreePhysicalMemory,TotalVirtualMemorySize,FreeVirtualMemory
echo Tools+ v.0.1
echo https://github.com/webdev1121/
echo ==========================================================================================
echo List Method : 
echo [ 1 ] Auto Clean And Optimize Method 
echo [ 2 ] Info About Your Computer
echo [ 3 ] Remove Bloatware (Windows 10 And 8 Only)
echo Enter Any Key To Exit
set /p Input=Enter 1 or 2:
If /I "%Input%"=="1" goto 1
If /I "%Input%"=="2" goto 2
If /I "%Input%"=="3" goto under-dev
If /I "%Input%"=="" goto exit

:1
cls
echo ==========================================================================================
echo ========================================= Tools+ =========================================
echo ==========================================================================================
echo Tools+ v.0.1
echo https://github.com/webdev1121/
echo ==========================================================================================
echo Wait...
echo Will Take 40 Minutes Or 1 Hour+
mrt /Q
cleanmgr.exe /autoclean
defrag C:
CHKDSK /F/R
echo Done!
pause
cls
goto ask

:2
cls
color a
echo ==========================================================================================
echo ========================================= Tools+ =========================================
echo ==========================================================================================
echo Tools+ v.0.1
echo https://github.com/webdev1121/
echo ==========================================================================================
systeminfo
pause
cls
goto ask

:under-dev
cls
echo sorry! under development
echo v.0.1
pause
cls
goto ask

:exit
cls
echo Exiting...
pause
