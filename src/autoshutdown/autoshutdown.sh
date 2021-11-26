#!/bin/bash

function showStatus() {
    # get actual backlight information
    old=$(<"/sys/class/backlight/backlight/brightness")
    for i in 1 2 3 4 5 6 7 8 9 10
    do
        # Switch backlight on/off to announce the shutdown in a few minutes
        echo "0" > /sys/class/backlight/backlight/brightness
        sleep 0.2
        echo "100" > /sys/class/backlight/backlight/brightness
        sleep 0.2
    done
    # set the backlight back to normal 
    echo $old > /sys/class/backlight/backlight/brightness
}


while true; do
    if [ $(cat /sys/class/power_supply/axp20x-battery/capacity) -le 10 ]; then
        python /usr/bin/autoshutdown_battery_on.py
    else
        python /usr/bin/autoshutdown_battery_off.py
    fi

    if [ $(cat /sys/class/power_supply/axp20x-battery/capacity) -le 3 ]; then
        # announce it
        showStatus;
        echo "announced\n"
        # wait 3 minutes
        sleep 3m
        echo "slept 3 minutes\n"
        # check again
        if [ $(cat /sys/class/power_supply/axp20x-battery/capacity) -le 3 ] && [ $(cat /sys/class/power_supply/axp20x-battery/status) != 'Charging' ]; then
                # shutdown if its not plugged in
                echo "capacity still under limit, shutdown\n"
                sudo shutdown -h now
        else
                echo "capacity over 3 or charging\n"
        fi
    fi
    echo "battery okay\n"
    sleep 1m
done
