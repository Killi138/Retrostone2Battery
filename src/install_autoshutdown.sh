#!/bin/bash
#make sure old versions are stopped
sudo systemctl stop autoshutdown.service

#install/configure new files
sudo cp autoshutdown/autoshutdown.service /etc/systemd/system/
sudo cp autoshutdown/autoshutdown.sh /usr/bin/
sudo cp autoshutdown/autoshutdown_battery_on.py /usr/bin/
sudo cp autoshutdown/autoshutdown_battery_off.py /usr/bin/
sudo chmod 755 /usr/bin/autoshutdown.sh

#activate
sudo systemctl enable autoshutdown.service
sudo systemctl start  autoshutdown.service

echo "autoshutdown installed"
