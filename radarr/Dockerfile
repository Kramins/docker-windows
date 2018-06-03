# escape=`

FROM microsoft/windowsservercore AS build
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop';"]

RUN iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex;

ARG RADARR_VERSION
ENV RADARR_VERSION ${RADARR_VERSION}


RUN choco install radarr --ignore-checksums -y --version $env:RADARR_VERSION;

FROM microsoft/windowsservercore AS final
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop';"]

COPY --from=build C:\ProgramData\Radarr C:\app

EXPOSE 7878
 
VOLUME [ "C:/config" ]

COPY docker-entrypoint.ps1 /

CMD . .\docker-entrypoint.ps1