
& '.\Program Files (x86)\Deluge\deluged.exe' -c "C:\Config\Deluge\"
& '.\Program Files (x86)\Deluge\deluge-web.exe' -c "C:\Config\Deluge\"
& .\ProgramData\NzbDrone\bin\NzbDrone.exe /data=C:\Config\Sonarr
& .\ProgramData\Radarr\bin\Radarr.exe /data=C:\Config\Radarr
Start-Process .\ProgramData\Jackett\JackettConsole.exe -ArgumentList "--DataFolder C:\Config\Jackett --ListenPublic"
