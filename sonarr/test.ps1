. .\config.ps1

$imageFullName = "$repo/$($ImageName):$SONARR_VERSION-windowsservercore"

docker run -v d:/temp/config/sonarr:c:/config -p 8989:8989 --rm -it $imageFullName