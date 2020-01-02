fb0              hidraw3    loop5    net               ram12               ram9   tty0     tty19  tty29  tty39  tty49  tty59  uhid       vcs4     vhci
pi@retropie-cdaze:~ $ vi ../.jslisten
pi@retropie-cdaze:~ $ cat .jslisten
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
