#!/bin/bash
cp /home/pi/.config/zdoom/zdoom.ini_doom_retrostone /home/pi/.config/zdoom/zdoom.ini
"/opt/retropie/supplementary/runcommand/runcommand.sh" 0 _PORT_ "doom" "/home/pi/RetroPie/roms/ports/doom/doom1.wad"
