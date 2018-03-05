# escape=`

FROM openjdk:8-windowsservercore
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop';"]

RUN iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex; `
    choco install -y 7zip; `
    Invoke-WebRequest -Uri 'http://dl.ubnt.com/unifi/5.6.29/UniFi-installer.exe' -Outfile 'C:\UniFi-installer.exe';
RUN 7z x C:\UniFi-installer.exe -oC:\app\;

VOLUME [ "C:/app/data" ]

EXPOSE 8080 8081 8443 8843 8880 3478

COPY docker-entrypoint.ps1 /

CMD . .\docker-entrypoint.ps1