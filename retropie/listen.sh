#!/bin/bash

case $1 in
    "shutdown")
        echo "shutdown"
        sudo shutdown -h now
    ;;
    "reboot")
        echo "rebooting"
        sudo reboot
    ;;
    "exit")
        echo "exit emulation"
        sudo python /home/pi/scripts/keypress.py exit
    ;;
    "select")
        echo "select key"
        sudo python /home/py/scripts/keypress.py select
    ;;
    "start")
        echo "start key"
        sudo python /home/pi/scripts/keypress.py start
    ;;
esac
