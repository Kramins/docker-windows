# escape=`

FROM microsoft/windowsservercore AS build
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop';"]

RUN iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex;

ARG SONARR_VERSION
ENV SONARR_VERSION ${SONARR_VERSION}


RUN choco install sonarr --ignore-checksums -y --version $env:SONARR_VERSION;
# ADD https://github.com/Sonarr/Sonarr/archive/v${SONARR_VERSION}.zip C:\sonarr.zip

# RUN Expand-Archive -Path .\sonarr.zip -DestinationPath C:\app\

FROM microsoft/windowsservercore AS final

COPY --from=build C:\ProgramData\NzbDrone C:\app

EXPOSE 8989
 
VOLUME [ "C:/config" ]
WORKDIR C:\app\bin

CMD [ "NzbDrone.Console.exe", "/data=C:\\config\\" ]
