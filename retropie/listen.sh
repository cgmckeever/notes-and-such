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
    ;;
    "select")
        echo "select key"
    ;;
    "start")
        echo "start key"
    ;;
esac
