$nvimSource = "$env:LOCALAPPDATA\nvim"
$emacsSource = "$env:APPDATA\.emacs.d"
$alacrittySource = "$env:APPDATA\alacritty"

$nvimDestination = "$pwd\.config\nvim"
$emacsDestination = "$pwd\.config\emacs"
$alacrittyDestination = "$pwd\.config\alacritty"

if (-not (Test-Path $nvimDestination)) {
    New-Item -ItemType Directory -Path $nvimDestination -Force
}

if (-not (Test-Path $emacsDestination)) {
    New-Item -ItemType Directory -Path $emacsDestination -Force
}

if (-not (Test-Path $alacrittyDestination)) {
    New-Item -ItemType Directory -Path $alacrittyDestination -Force
}

if (Test-Path $nvimSource) {
    Copy-Item -Path $nvimSource\* -Destination $nvimDestination -Recurse -Force
}

if (Test-Path $emacsSource) {
    Copy-Item -Path $emacsSource\* -Destination $emacsDestination -Recurse -Force
}

if (Test-Path $alacrittySource) {
    Copy-Item -Path $alacrittySource\* -Destination $alacrittyDestination -Recurse -Force
}

