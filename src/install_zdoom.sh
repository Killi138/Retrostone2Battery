#!/bin/bash

#make a backup of your installed files
echo "creating backups in /opt/retropie/ports/zdoom/"
sudo cp /opt/retropie/ports/zdoom/zdoom /opt/retropie/ports/zdoom/zdoom_bak_org
sudo cp /opt/retropie/ports/zdoom/zdoom.pk3 /opt/retropie/ports/zdoom/zdoom.pk3_bak_org

#overwrite my compiled files for the Retrostone 2
echo "overwrite compiled files for retrostone 2"
sudo cp functional_zdoom/zdoom /opt/retropie/ports/zdoom/zdoom
sudo cp functional_zdoom/zdoom.pk3 /opt/retropie/ports/zdoom/zdoom.pk3
sudo chown pi:pi /opt/retropie/ports/zdoom/zdoom
sudo chown pi:pi /opt/retropie/ports/zdoom/zdoom.pk3
sudo chmod 0755 /opt/retropie/ports/zdoom/zdoom
sudo chmod 0644 /opt/retropie/ports/zdoom/zdoom.pk3

echo "copy start files for Doom1 to emulator"
sudo cp functional_zdoom/Doom_1.sh /home/pi/RetroPie/roms/ports/Doom_1.sh
sudo cp functional_zdoom/Doom_1\ Controller.sh /home/pi/RetroPie/roms/ports/Doom_1\ Controller.sh
sudo chown pi:pi /home/pi/RetroPie/roms/ports/Doom_1.sh
sudo chown pi:pi /home/pi/RetroPie/roms/ports/Doom_1\ Controller.sh
sudo chmod 0755 /home/pi/RetroPie/roms/ports/Doom_1.sh
sudo chmod 0755 /home/pi/RetroPie/roms/ports/Doom_1\ Controller.sh
cp functional_zdoom/zdoom.ini_doom_retrostone /home/pi/.config/zdoom/zdoom.ini_doom_retrostone
cp functional_zdoom/zdoom.ini_doom_controller /home/pi/.config/zdoom/zdoom.ini_doom_controller

echo "functional zdoom installed, please restart emulationstation"
