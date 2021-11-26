#!/bin/bash
SERVICE='fbi'
BATTERY_PACK=$(cat /sys/class/power_supply/axp20x-battery/capacity)
BATTERY_STATUS=$(cat /sys/class/power_supply/axp20x-battery/status)
convert /home/pi/RetroPie/retropiemenu/RetrOrangePi/battery_background.jpg -gravity center -font FreeSans \
    -pointsize 60 -stroke '#000C' -strokewidth 4 -annotate 0 "Battery: $BATTERY_PACK%\n$BATTERY_STATUS" -undercolor '#00000080' \
    -stroke  none -fill white -annotate 0 "Battery: $BATTERY_PACK%\n$BATTERY_STATUS" \
    -gravity south -font FreeSans \
    /home/pi/RetroPie/retropiemenu/RetrOrangePi/battery.jpg
fbi -a -noverbose -t 3 --once /home/pi/RetroPie/retropiemenu/RetrOrangePi/battery.jpg
if ps ax | grep $SERVICE > /dev/null
    then sudo killall -q $SERVICE
fi
