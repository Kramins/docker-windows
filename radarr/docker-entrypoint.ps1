Write-Host "Starting Radarr"
& .\app\bin\Radarr.exe /data=C:\config\
while ($true) { Start-Sleep -Seconds 3600 }