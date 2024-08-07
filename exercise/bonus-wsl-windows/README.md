# Bonus: chmod auf Windows-Pfaden

Um chmod für Windows-Pfade zu aktivieren, könnt ihr eure wsl.conf-Datei bearbeiten. Diese findet ihr in euren Linux Pfaden unter /etc/wsl.conf

Fügt folgendes hinzu:
```python
[automount]
enabled = true
root = /mnt/
options = "metadata,umask=77,fmask=11"
mountFsTab = false
```

Führt nun noch in einer Powershell (mit Adminrechten) folgenden Befehl aus:
```python
Restart-Service -Name "LxssManager"
```

Was die Einstellunge einzelnd bewirken, könnt ihr hier nachlesen: 
https://devblogs.microsoft.com/commandline/automatically-configuring-wsl/