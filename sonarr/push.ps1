. .\config.ps1


$imageFullName = "$repo/$($ImageName):$SONARR_VERSION-windowsservercore"
Write-Host "Pushing $imageFullName"
docker push $imageFullName
Write-Host "Tagging image as latest"
docker push "kramins/$($ImageName):latest"
