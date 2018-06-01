$UNIFI_VERSION = "5.7.23"

$imageFullName = ("kramins/unifi:{0}-windowsservercore" -f $UNIFI_VERSION)
Write-Host `Building $imageFullName`
docker build --build-arg UNIFI_VERSION=$UNIFI_VERSION . -t $imageFullName
Write-Host "Tagging image as latest"
docker tag $imageFullName  kramins/unifi:latest

# docker build --build-arg UNIFI_VERSION=$UNIFI_VERSION . -t kramins/unifi