Get-Process | Where-Object { $_.Name -like "Spotify*" } | Stop-Process -Force -ErrorAction SilentlyContinue

Start-Sleep -Seconds 2

Start-Process "$env:APPDATA\Spotify\Spotify.exe"

Start-Sleep -Seconds 5  

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.SendKeys]::SendWait(" ")  # spacebar simulates Play/Pause
