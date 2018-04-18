$UNIFI_VERSION = "5.7.20"

docker push  -t ("kramins/unifi:{0}-windowsservercore" -f $UNIFI_VERSION)
docker push kramins/unifi