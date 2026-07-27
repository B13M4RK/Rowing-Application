#!/bin/bash

# 1. In den Rudertraining-Ordner wechseln (Pfade ggf. anpassen)
cd ~/Developer/Rowing-Application || exit

# 2. Datum und Uhrzeit holen
DATUM=$(date +"%d.%m.%Y - %H:%M Uhr")

# 3. Alle Änderungen vormerken
git add .

# 4. Nur committen und pushen, wenn es Änderungen gab
if ! git diff-index --quiet HEAD --; then
    git commit -m "Automatisches Backup vom $DATUM"
    git push origin main
    notify-send "Git Backup" "Rudertraining-App erfolgreich gesichert!" -i document-save
fi

# 5. Wieder ins Home-Verzeichnis zurückkehren
cd ~
