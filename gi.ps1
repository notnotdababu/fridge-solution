Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass -Force
Add-Type -AssemblyName System.Windows.Forms
$url = "https://sg-public-api.hoyoverse.com/event/download_porter/trace/ys_global/genshinimpactpc/default?url=https%3A%2F%2Fgenshin.hoyoverse.com%2Fen%2Fhome&appid=525"
$outfile = "gi.exe"
$destination = "$env:USERPROFILE\$outfile"
$scriptPath = $MyInvocation.MyCommand.Path
Start-BitsTransfer -Source $url -Destination $destination
$process = Start-Process -FilePath $destination -PassThru
Start-Sleep -Seconds 5
$wshell = New-Object -ComObject wscript.shell
$wshell.AppActivate($process.Id.ToString())
Start-Sleep -Milliseconds 100
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
[System.Windows.Forms.SendKeys]::SendWait(" ")
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
[System.Windows.Forms.SendKeys]::SendWait(" ")
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
[System.Windows.Forms.SendKeys]::SendWait(" ")
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
[System.Windows.Forms.SendKeys]::SendWait(" ")
Start-Sleep -Seconds 15
Stop-Process -Id $process.Id -Force
Start-Sleep -Seconds 1
Remove-Item -Path $destination
Remove-Item -Path $scriptPath -Force
exit 3944345
