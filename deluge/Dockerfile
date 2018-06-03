# escape=`

FROM microsoft/windowsservercore AS final
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop';"]

RUN iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex;

ARG DELUGE_VERSION
ENV DELUGE_VERSION ${DELUGE_VERSION}


RUN choco install deluge --ignore-checksums -y --version $env:DELUGE_VERSION;

EXPOSE 8112
EXPOSE 58846
# Deluge Torrent Ports
EXPOSE 56881-56889/tcp
EXPOSE 56881-56889/udp
 
VOLUME [ "C:/config" ]

COPY docker-entrypoint.ps1 /

CMD . .\docker-entrypoint.ps1