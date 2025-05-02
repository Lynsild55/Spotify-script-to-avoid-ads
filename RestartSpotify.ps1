# Kill all Spotify-related processes
Get-Process | Where-Object { $_.Name -like "Spotify*" } | Stop-Process -Force -ErrorAction SilentlyContinue

Start-Sleep -Seconds 2

# Start Spotify
Start-Process "$env:APPDATA\Spotify\Spotify.exe"

# Play
Start-Sleep -Seconds 5  # wait for Spotify to finish loading

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.SendKeys]::SendWait(" ")  # spacebar simulates Play/Pause
