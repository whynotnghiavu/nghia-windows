$CurrentPath = Split-Path -Parent -Path $MyInvocation.MyCommand.Definition
Write-Host "Current path: $CurrentPath"

#! Thay đổi hình nền Desktop
Write-Host "Change Desktop Wallpaper"

$wallpaperPath = Join-Path -Path $CurrentPath -ChildPath "wallpaper.jpeg"
Write-Host "File: $wallpaperPath"

Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "Wallpaper" -Value $wallpaperPath
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters ,1 ,True



