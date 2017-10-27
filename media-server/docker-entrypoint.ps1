Write-Host "Starting Deluge"
& '.\Program Files (x86)\Deluge\deluged.exe' -c "C:\config\Deluge\"
Write-Host "Starting Deluge Web"
& '.\Program Files (x86)\Deluge\deluge-web.exe' -c "C:\config\Deluge\"
Write-Host "Starting Sonarr"
& .\ProgramData\NzbDrone\bin\NzbDrone.exe /data=C:\config\Sonarr 
Write-Host "Starting Radarr"
& .\ProgramData\Radarr\bin\Radarr.exe /data=C:\config\Radarr
Write-Host "Starting Jackett"
Start-Process .\ProgramData\Jackett\JackettConsole.exe -ArgumentList "--DataFolder C:\config\Jackett --ListenPublic"
Write-Host "Running"
while ($true) { Start-Sleep -Seconds 3600 }