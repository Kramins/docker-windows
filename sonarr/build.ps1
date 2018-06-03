. .\config.ps1


$imageFullName = "$repo/$($ImageName):$SONARR_VERSION-windowsservercore"
Write-Host `Building $imageFullName`
docker build --build-arg SONARR_VERSION=$SONARR_VERSION . -t $imageFullName
Write-Host "Tagging image as latest"
docker tag $imageFullName  "kramins/$($ImageName):latest"
