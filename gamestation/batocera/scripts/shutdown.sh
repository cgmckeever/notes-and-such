#!/bin/bash

xrandr --output HDMI-2 --mode 1280x1024 -display :0.0

sleep 2

echo "Shutting Down" | LANG=en_US HOME=/userdata/system XAUTHORITY=/var/lib/.Xauthority DISPLAY=:0.0 osd_cat -f -*-*-bold-*-*-*-38-120-*-*-*-*-*-* -cred -s 3 -d 4

sleep 2

/sbin/shutdown -h now