#!/bin/bash

# Schritt 1: Ins Verzeichnis wechseln
cd /usr/local/sbin

# Schritt 2: Funktionen herunterladen
wget -q http://sven-ola.commando.de/functions.sh

# Schritt 3: Skript herunterladen
wget -q http://sven-ola.commando.de/013-cashdrawer.sh

# Schritt 4: Berechtigungen setzen
chmod +x *.sh

# Schritt 5: Skript mit manuellem Modus ausführen und Enter drücken
echo | /usr/local/sbin/013-cashdrawer.sh manual

# Warte kurz, um sicherzustellen, dass das Skript geladen wurde
sleep 1

# Schritt 6: Automatisch 'o' (für Öffnen) drücken
echo "o" | /usr/local/sbin/013-cashdrawer.sh manual

# Schritt 7: Beenden des Skripts
echo "Das Skript wurde automatisch ausgeführt."
