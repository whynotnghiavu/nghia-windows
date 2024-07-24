import subprocess

try:
    subprocess.call(["reg", "import", r"dotfiles\\code\\windows_registry_time_zone\\windows_registry_time_zone.reg"])
except Exception as e:
    print(f"An error occurred: {e}")
