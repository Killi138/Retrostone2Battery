# Retrostone 2 Batterystatus and Autoshutdown

The service in this repository contains a script which reads the battery capacity and has the following features:
- fixes the low voltage LED (it was always on)
- flicker the screen 10 times when low voltage is detected
- auto-shutdown the device after 3 minutes while low voltage is detected

The Retrostone 2 Pro can be purchased on http://8bcraft.com.

## Setup
```bash
./install.sh
```
