# Credit: https://github.com/StefanScherer/dockerfiles-windows/blob/master/build.ps1

$ErrorActionPreference = 'Stop';
$files = ""
Write-Host Starting build

# Write-Host Updating base images
# docker pull microsoft/windowsservercore
# docker pull microsoft/nanoserver

$files = $(git diff --name-only HEAD~1)

Write-Host Changed files:

$dirs = @{}

$files | ForEach-Object {
  Write-Host $_
  $dir = $_ -replace "\/[^\/]+$", ""
  $dir = $dir -replace "/", "\"
  if (Test-Path "$dir\build.ps1") {
    Write-Host "Storing $dir for build"
    $dirs.Set_Item($dir, 1)
  } else {
    $dir = $dir -replace "\\[^\\]+$", ""
    if (Test-Path "$dir\build.ps1") {
      Write-Host "Storing $dir for build"
      $dirs.Set_Item($dir, 1)
    }
  }
}
Write-Host "###########################"
Write-Host "# Starting Build Process: #"
Write-Host "###########################"

$dirs.GetEnumerator() | Sort-Object Name | ForEach-Object {
  $dir = $_.Name
  Write-Host Building in directory $dir
  pushd $dir
#   .\build.ps1
  popd
}

# docker images