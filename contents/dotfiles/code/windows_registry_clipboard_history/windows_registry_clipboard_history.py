import subprocess


# subprocess.call(["reg", "import", r"dotfiles\code\windows_registry_clipboard_history\windows_registry_clipboard_history_disable.reg"])
subprocess.call(["reg", "import", r"dotfiles\code\windows_registry_clipboard_history\windows_registry_clipboard_history_enable.reg"])
    