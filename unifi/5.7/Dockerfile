# escape=`
FROM microsoft/windowsservercore AS build 
SHELL ["powershell", "-Command", "$ErrorActionpuPreference = 'Stop';"]

ARG UNIFI_VERSION
ENV UNIFI_VERSION ${UNIFI_VERSION}

RUN iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex; `
    choco install -y 7zip;

ADD https://dl.ubnt.com/unifi/${UNIFI_VERSION}/UniFi-installer.exe C:\UniFi-installer.exe

RUN 7z x C:\UniFi-installer.exe -oC:\app\;

FROM openjdk:8-windowsservercore AS final
SHELL ["powershell", "-Command", "$ErrorActionpuPreference = 'Stop';"]

ARG UNIFI_VERSION
ENV UNIFI_VERSION ${UNIFI_VERSION}

COPY --from=build C:\app C:\app

VOLUME [ "C:/app/data" ]

EXPOSE 8080 8081 8443 8843 8880 3478

COPY docker-entrypoint.ps1 /

CMD . .\docker-entrypoint.ps1