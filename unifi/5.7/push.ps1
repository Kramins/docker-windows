$UNIFI_VERSION = "5.7.20"

#docker push  -t ("kramins/unifi:{0}-windowsservercore" -f $UNIFI_VERSION)
#docker push kramins/unifi

$dockerOutput = docker images --format "{{.ID}},{{.Repository}},{{.Tag}},{{.CreatedAt}}" kramins/unifi


$repos = @()
$dockerOutput | ForEach-Object {
    $csv = $_.Split(",")
    $data = @{}
    $data.Id = $csv[0]
    $data.Repository = $csv[1]
    $data.Tag = $csv[2]
    $data.CreatedAt = $csv[3]

    $repos+= $data
}

$repos | ForEach-Object {
    docker push ("{0}:{1}" -f $_.Repository, $_.Tag)
}