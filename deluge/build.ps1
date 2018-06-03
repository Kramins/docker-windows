. .\config.ps1


$imageFullName = "$repo/$($ImageName):$DELUGE_VERSION-windowsservercore"
Write-Host `Building $imageFullName`
docker build --build-arg DELUGE_VERSION=$DELUGE_VERSION . -t $imageFullName
Write-Host "Tagging image as latest"
docker tag $imageFullName  "kramins/$($ImageName):latest"
