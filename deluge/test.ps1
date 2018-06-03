. .\config.ps1

$imageFullName = "$repo/$($ImageName):$DELUGE_VERSION-windowsservercore"

docker run -v d:/temp/config/radarr:c:/config `
-p 8112:8112 `
-p 58846:58846 `
-p 56881-56889:56881-56889 `
-p 56881-56889:56881-56889/udp `
--rm -it $imageFullName powershell