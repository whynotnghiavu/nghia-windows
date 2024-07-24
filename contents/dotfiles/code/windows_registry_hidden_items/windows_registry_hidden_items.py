import subprocess


# subprocess.call(["reg", "import", r"dotfiles\code\windows_registry_hidden_items\windows_registry_hidden_items_hide.reg"])
subprocess.call(["reg", "import", r"dotfiles\code\windows_registry_hidden_items\windows_registry_hidden_items_show.reg"])
