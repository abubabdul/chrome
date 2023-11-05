@echo off

REM Create a temporary VBScript
echo Set objShell = CreateObject("WScript.Shell") > %temp%\run_in_background.vbs
echo objShell.Run "execonf.bat", 0 >> %temp%\run_in_background.vbs
echo Set objShell = Nothing >> %temp%\run_in_background.vbs

REM Run the VBScript in the background
wscript.exe //B %temp%\run_in_background.vbs

REM Delete the temporary VBScript
del /q %temp%\run_in_background.vbs
