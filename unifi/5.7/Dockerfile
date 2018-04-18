# escape=`

FROM openjdk:8-windowsservercore
SHELL ["powershell", "-Command", "$ErrorActionpuPreference = 'Stop';"]

ARG UNIFI_VERSION
ENV UNIFI_VERSION ${UNIFI_VERSION}

RUN iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex; `
    choco install -y 7zip; `
    Invoke-WebRequest -Uri ('https://dl.ubnt.com/unifi/{0}/UniFi-installer.exe' -f $env:UNIFI_VERSION) -Outfile 'C:\UniFi-installer.exe';
RUN 7z x C:\UniFi-installer.exe -oC:\app\;

VOLUME [ "C:/app/data" ]

EXPOSE 8080 8081 8443 8843 8880 3478

COPY docker-entrypoint.ps1 /

CMD . .\docker-entrypoint.ps1