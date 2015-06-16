@Echo Off
Title Reg Converter v1.0 & Color 1A
cd %systemroot%\system32
call :IsAdmin
::Set taskbar small icons and never combine
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarSmallIcons" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarGlomLevel" /t REG_DWORD /d "2" /f
:: Disable AutoTray
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer" /v EnableAutoTray /t REG_DWORD /d 0 /f
Exit

:IsAdmin
Reg.exe query "HKU\S-1-5-19\Environment"
If Not %ERRORLEVEL% EQU 0 (
 Cls & Echo You must have administrator rights to continue ... 
 Pause & Exit
)
Cls
goto:eof
