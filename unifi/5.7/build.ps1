$UNIFI_VERSION = "5.7.23"

docker build --build-arg UNIFI_VERSION=$UNIFI_VERSION . -t ("kramins/unifi:{0}-windowsservercore" -f $UNIFI_VERSION)
docker build --build-arg UNIFI_VERSION=$UNIFI_VERSION . -t kramins/unifi