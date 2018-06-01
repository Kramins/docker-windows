
$pushs = Get-ChildItem -Recurse push.ps1

$pushs | ForEach-Object {
    $dir = Get-Item $_
    Push-Location $dir.DirectoryName
    Write-Host $dir.DirectoryName
    .\push.ps1
    Pop-Location
}