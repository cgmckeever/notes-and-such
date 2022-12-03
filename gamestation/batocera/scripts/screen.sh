#!/bin/bash

SCREEN=$(xrandr -q -display :0.0 | grep \*)

if [ "$SCREEN" == "" ]; then
  xrandr --output HDMI-2 --mode 1280x1024 -display :0.0
  batocera-audio setSystemVolume unmute
else
  xrandr --output HDMI-2 --off -display :0.0
  batocera-audio setSystemVolume mute
fi