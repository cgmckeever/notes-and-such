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
        sudo keypress.py exit
    ;;
    "select")
        echo "select key"
        sudo keypress.py select
    ;;
    "start")
        echo "start key"
        sudo keypress.py start
    ;;
esac
