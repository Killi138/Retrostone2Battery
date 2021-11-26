#!/bin/bash

#install/configure new files
cp batterystatus/battery_background.jpg /home/pi/RetroPie/retropiemenu/RetrOrangePi/battery_background.jpg
cp batterystatus/Battery.sh /home/pi/RetroPie/retropiemenu/Battery.sh
sudo chmod 755 /home/pi/RetroPie/retropiemenu/Battery.sh

echo "batterystatus installed"
