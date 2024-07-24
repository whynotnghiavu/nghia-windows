with open("install.conf.yaml", "r", encoding="utf-8") as file:
    contents = file.read()


contents = contents.replace("\n-", "\n\n\n\n\n\n\n\n\n-")
contents = contents.replace("\n    - command", "\n\n\n\n\n\n\n\n\n    - command")


with open("install.conf.yaml", "w", encoding="utf-8") as file:
    file.write(contents)
