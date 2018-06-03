. .\config.ps1


$imageFullName = "$repo/$($ImageName):$RADARR_VERSION-windowsservercore"
Write-Host "Pushing $imageFullName"
docker push $imageFullName
Write-Host "Tagging image as latest"
docker push "kramins/$($ImageName):latest"
