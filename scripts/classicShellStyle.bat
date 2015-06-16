@Echo Off
Title Reg Converter v1.0 & Color 1A
cd %systemroot%\system32
call :IsAdmin

Reg.exe add "HKCU\Software\IvoSoft\ClassicStartMenu" /v "ShowedStyle2" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\IvoSoft\ClassicStartMenu" /v "CSettingsDlg" /t REG_BINARY /d "d10100008a0000000000000000000000360d000001000000" /f
Reg.exe add "HKCU\Software\IvoSoft\ClassicStartMenu\Settings" /v "Version" /t REG_DWORD /d "67239937" /f
Reg.exe add "HKCU\Software\IvoSoft\ClassicStartMenu\Settings" /v "SkipMetro" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\IvoSoft\ClassicStartMenu\Settings" /v "MenuStyle" /t REG_SZ /d "Win7" /f
Exit

:IsAdmin
Reg.exe query "HKU\S-1-5-19\Environment"
If Not %ERRORLEVEL% EQU 0 (
 Cls & Echo You must have administrator rights to continue ... 
 Pause & Exit
)
Cls
goto:eof