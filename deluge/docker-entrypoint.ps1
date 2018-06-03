Write-Host "Starting Deluge"
& '.\Program Files (x86)\Deluge\deluged.exe' -c "C:\config\"
Write-Host "Starting Deluge Web"
& '.\Program Files (x86)\Deluge\deluge-web.exe' -c "C:\config\"

while ($true) { Start-Sleep -Seconds 3600 }