#!/bin/bash

case $1 in
    "shutdown")
        echo "shutdown"
        #sudo amixer cset numid=2 1
        sudo shutdown -h now
    ;;
    "reboot")
        echo "rebooting"
        #sudo amixer cset numid=2 1
        sudo reboot
    ;;
    "sleep")
        echo "sleep toggle"
        display=$(vcgencmd display_power)
        IFS='=' read -r -a array <<< "$display"
        mode="1"
        if [ "${array[1]}" == "1" ]; then mode=0; fi
        vcgencmd display_power $mode
        #sudo amixer cset numid=2 $mode
    ;;
    "exit")
        echo "exit emulation"
        sudo python /home/pi/scripts/keypress.py exit
    ;;
    "select")
        echo "select key"
        sudo python /home/pi/scripts/keypress.py select
    ;;
    "start")
        echo "start key"
        sudo python /home/pi/scripts/keypress.py start
    ;;
esac
