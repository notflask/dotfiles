$nvimSource = "$env:LOCALAPPDATA\nvim"
$alacrittySource = "$env:APPDATA\alacritty"

$nvimDestination = "$pwd\.config\nvim"
$alacrittyDestination = "$pwd\.config\alacritty"

if (-not (Test-Path $nvimDestination)) {
    New-Item -ItemType Directory -Path $nvimDestination -Force
}

if (-not (Test-Path $alacrittyDestination)) {
    New-Item -ItemType Directory -Path $alacrittyDestination -Force
}

if (Test-Path $nvimSource) {
    Copy-Item -Path $nvimSource\* -Destination $nvimDestination -Recurse -Force
    Write-Host "nvim folder copied to $nvimDestination"
}

if (Test-Path $alacrittySource) {
    Copy-Item -Path $alacrittySource\* -Destination $alacrittyDestination -Recurse -Force
}

