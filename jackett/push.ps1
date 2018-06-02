. .\config.ps1


$imageFullName = "$repo/$($ImageName):$JACKETT_VERSION-windowsservercore"
Write-Host `Building $imageFullName`
docker push $imageFullName
Write-Host "Tagging image as latest"
docker push "kramins/$($ImageName):latest"
