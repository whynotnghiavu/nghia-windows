# Tải xuống tệp tin zip từ GitHub
Invoke-WebRequest -Uri 'https://github.com/company20206205/nghia-windows/archive/refs/heads/main.zip' -OutFile .\nghia-windows.zip



# Giải nén tệp tin zip
Expand-Archive .\nghia-windows.zip -DestinationPath .\




# Đổi tên thư mục nếu cần thiết
Rename-Item .\nghia-windows-main .\nghia-windows

# Xóa tệp tin zip sau khi đã giải nén
Remove-Item .\nghia-windows.zip



# Đảm bảo PowerShell đang ở trong thư mục chứa tập tin main.ps1
Set-Location .\nghia-windows\contents

# Chạy tập lệnh main.ps1
.\main.ps1
# powershell -ExecutionPolicy ByPass -File main.ps1
