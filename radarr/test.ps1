. .\config.ps1

$imageFullName = "$repo/$($ImageName):$RADARR_VERSION-windowsservercore"

docker run -v d:/temp/config/radarr:c:/config -p 7878:7878 --rm -it $imageFullName