. .\config.ps1

$imageFullName = "$repo/$($ImageName):$JACKETT_VERSION-windowsservercore"

docker run -v d:/temp/config/jackett:c:/config -p 9117:9117 --rm -it $imageFullName