# General

- scripts https://wiki.batocera.org/launch_a_script
- keys https://wiki.batocera.org/scripting_function_keys

## Keyboard Shortcuts

`/userdata/system/configs/multimedia_keys.conf`
```
KEY_LEFTCTRL+KEY_LEFTSHIFT+KEY_LEFTALT+KEY_D 1  /userdata/system/configs/scripts/shutdown.sh
KEY_LEFTCTRL+KEY_LEFTSHIFT+KEY_LEFTALT+KEY_E 1  /userdata/system/configs/scripts/screen.sh
KEY_LEFTCTRL+KEY_LEFTSHIFT+KEY_LEFTALT+KEY_F 1  /sbin/reboot
```

`/userdata/system/configs/scripts/shutdown.sh`
```
#!/bin/bash

xrandr --output HDMI-2 --mode 1280x720 -display :0.0

sleep 2

echo rebooting | LANG=en_US HOME=/userdata/system XAUTHORITY=/var/lib/.Xauthority DISPLAY=:0.0 osd_cat -f -*-*-bold-*-*-*-38-120-*-*-*-*-*-* -cred -s 3 -d 4

sleep 2

/sbin/shutdown -h now
```

`/userdata/system/configs/scripts/screen.sh`
```
#!/bin/bash

SCREEN=$(xrandr -q -display :0.0 | grep \*)

if [ "$SCREEN" == "" ]; then
  xrandr --output HDMI-2 --mode 1280x720 -display :0.0
  batocera-audio setSystemVolume unmute
else
  xrandr --output HDMI-2 --off -display :0.0
  batocera-audio setSystemVolume mute
fi
```

# Monitor

## Turn [off/on](https://unix.stackexchange.com/questions/227876/how-to-set-custom-resolution-using-xrandr-when-the-resolution-is-not-available-i)

- `export DISPLAY=:0.0`
- `xrandr --output HDMI-2 --off -display :0.0`
- `xrandr --output HDMI-2 --mode 1280x1024 -display :0.0`

# Controllers

##  Test

- `sdl2-jstest -l`
- `evtest`

## Spinner

- https://www.youtube.com/watch?v=0_aIkkObZWM
- https://neo-source.com/index.php?topic=3709.0
- https://forums.libretro.com/t/fb-neo-control-issues/34077/16


# Cores

- [Keyboard input to get into MAME menu](https://www.reddit.com/r/batocera/comments/r5qxzh/having_trouble_with_mame_2003_plus_arcade_button/)

## Per game settings

https://forum.batocera.org/d/6652-being-able-to-use-trackball-and-spinner-using-per-mouse-index

### batocera.conf

```
## CUSTOM
mame["tempest3.zip"].retroarch.input_player1_mouse_index=1
mame["tempest3.zip"].retroarch.input_analog_sensitivity=-5
```

### Tempest

- GRS button-hole 20% sensitivity