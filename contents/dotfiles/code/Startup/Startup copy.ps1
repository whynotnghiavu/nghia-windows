#! Tạo thư mục temp trong startup
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

#! Tạo shortcut của Startup trên Desktop
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




#! Tạo thư mục Nghia trong Downloads
#! Tạo thư mục Music trong Nghia
#! Tạo shortcut của Music trên Desktop

