# Retrostone 2 Batterystatus, AutoShutdown and Helpers

This repository contains a couple of helpers and scripts around the Retrostone 2 Pro.
The Retrostone 2 Pro can be purchased on http://8bcraft.com.

## Autoshutdown (& Low-Battery-Announcement & Low-Battery-LED-Fix)
The autoshutdown-service contains a script which reads the battery capacity and has the following features:
- fixes the low voltage LED (it was always on)
- flicker the screen 10 times when low voltage is detected
- auto-shutdown the device after 3 minutes while low voltage is still detected (and not connected to a power supply)

### Setup
```bash
git clone https://github.com/Killi138/Retrostone2Battery
cd Retrostone2Battery/src/
sudo chmod 0755 ./install_autoshutdown.sh
./install_autoshutdown.sh
```

## Battery information
The battery information script shows you the actual battery level, if it's charging/discharging and can be accessed directly in the RetroPie menu. You can optional add it to the autostart to get a nicer look of the batterystatus while booting.

![image](https://user-images.githubusercontent.com/5298443/143605764-6c1ec430-1823-4a1a-8b97-2c52c34d7b6e.png)

### Setup
```bash
git clone https://github.com/Killi138/Retrostone2Battery
cd Retrostone2Battery/src/
sudo chmod 0755 ./install_battery.sh
./install_battery.sh
```

### Setup while bootscreen
```bash
vi /opt/retropie/configs/all/autostart.sh

-- add the following line --

/home/pi/RetroPie/retropiemenu/Battery.sh;

-- just before --

pulseaudio --start;
```

## Easier access to wifi and hdmi settings via menu
If you want an easy way to dis-/enable wifi or HDMI you can execute this script which creates a shortcut for this actions directly in the RetroPie menu for you.

![image](https://user-images.githubusercontent.com/5298443/143605896-78ed69f4-3d26-4be3-ac9c-cba5939b2552.png)

### Setup
```bash
git clone https://github.com/Killi138/Retrostone2Battery
cd Retrostone2Battery/src/
sudo chmod 0755 ./install_shortcuts.sh
./install_shortcuts.sh
```

## ZDoom with functional buttonmappings (including menu)
Delivered by the default os-image ZDoom (found here: https://github.com/rheit/zdoom) was playable but there was a problem with the button mappings while in menu (or go into the menu). The buttons of the Retrostone 2 didn't work in main menu. You had to have a keyboard with you to start a new game...so I compiled it myself with the changed mappings (ZDoom ignores the configured button mappings while in menu, that's the problem).
To get a full controllable and playable ZDoom engine you have to

### Setup
```bash
git clone https://github.com/Killi138/Retrostone2Battery
cd Retrostone2Battery/src/
sudo chmod 0755 ./install_zdoom.sh
./install_zdoom.sh
```

