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
        sudo python keypress.py exit
    ;;
    "select")
        echo "select key"
        sudo python keypress.py select
    ;;
    "start")
        echo "start key"
        sudo python keypress.py start
    ;;
esac
