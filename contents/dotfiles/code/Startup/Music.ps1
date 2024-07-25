 
# Create Nghia folder in Downloads
Write-Host "Create Nghia folder in Downloads"

$downloadsPath = [System.IO.Path]::Combine($env:USERPROFILE, "Downloads")
$nghiaFolderPath = [System.IO.Path]::Combine($downloadsPath, "Nghia")
Write-Host "downloadsPath: $downloadsPath"
Write-Host "nghiaFolderPath: $nghiaFolderPath"

if (-Not (Test-Path -Path $nghiaFolderPath)) {
    New-Item -ItemType Directory -Path $nghiaFolderPath -Force
    Write-Output "The folder 'Nghia' has been created at: $nghiaFolderPath"
} else {
    Write-Output "The folder 'Nghia' already exists at: $nghiaFolderPath"
}

# Create Music folder in Nghia
Write-Host "Create Music folder in Nghia"

$musicFolderPath = [System.IO.Path]::Combine($nghiaFolderPath, "Music")
Write-Host "musicFolderPath: $musicFolderPath"

if (-Not (Test-Path -Path $musicFolderPath)) {
    New-Item -ItemType Directory -Path $musicFolderPath -Force
    Write-Output "The folder 'Music' has been created at: $musicFolderPath"
} else {
    Write-Output "The folder 'Music' already exists at: $musicFolderPath"
}

# Create temp folder in Music












# Create Music shortcut on Desktop
Write-Host "Create Music shortcut on Desktop"

$musicShortcutPath = [System.IO.Path]::Combine($desktopPath, "Music.lnk")
Write-Host "musicShortcutPath: $musicShortcutPath"

$shortcut = $wshell.CreateShortcut($musicShortcutPath)
$shortcut.TargetPath = $musicFolderPath
$shortcut.WorkingDirectory = $musicFolderPath
$shortcut.WindowStyle = 1
$shortcut.Description = "Shortcut to Music Folder"
$shortcut.IconLocation = "shell32.dll, 239"
$shortcut.Save()
