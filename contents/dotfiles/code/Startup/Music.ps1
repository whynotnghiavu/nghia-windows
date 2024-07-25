# Create temp folder in startup
Write-Host "Create temp folder in startup"

$startupPath = [System.IO.Path]::Combine($env:APPDATA, "Microsoft\Windows\Start Menu\Programs\Startup")
$tempFolderPath = [System.IO.Path]::Combine($startupPath, "temp")
Write-Host "startupPath: $startupPath"
Write-Host "tempFolderPath: $tempFolderPath"

if (-Not (Test-Path -Path $tempFolderPath)) {
    New-Item -ItemType Directory -Path $tempFolderPath -Force
    Write-Output "The folder 'temp' has been created at: $tempFolderPath"
} else {
    Write-Output "The folder 'temp' already exists at: $tempFolderPath"
}

# Create Startup shortcut on Desktop
Write-Host "Create Startup shortcut on Desktop"

$startupPath = [System.IO.Path]::Combine($env:APPDATA, "Microsoft\Windows\Start Menu\Programs\Startup")
Write-Host "startupPath: $startupPath"
$desktopPath = [System.IO.Path]::Combine($env:USERPROFILE, "Desktop")
Write-Host "desktopPath: $desktopPath"
$desktopShortcutPath = [System.IO.Path]::Combine($desktopPath, "Startup.lnk")
Write-Host "desktopShortcutPath: $desktopShortcutPath"

$wshell = New-Object -ComObject WScript.Shell
$shortcut = $wshell.CreateShortcut($desktopShortcutPath)
$shortcut.TargetPath = $startupPath
$shortcut.WorkingDirectory = $startupPath
$shortcut.WindowStyle = 1
$shortcut.Description = "Shortcut to Startup Folder"
$shortcut.IconLocation = "shell32.dll, 34"
$shortcut.Save()

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
