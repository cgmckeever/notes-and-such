# General

## Utility

- https://wiki.batocera.org/access_the_batocera_via_ssh#batocera_es_swissknife_dev_tools

## mount boot

- `mount -o remount,rw /boot`

## SD Extender issues

- https://forums.raspberrypi.com/viewtopic.php?t=269457

`cmdline.txt`
```
sdhci.debug_quirks2=4
```

- scripts https://wiki.batocera.org/launch_a_script
- keys https://wiki.batocera.org/scripting_function_keys

## CLI Quit Retroarch

- https://github.com/libretro/RetroArch/issues/4718
- `/userdata/system/configs/scripts/ra-quit.sh`

## batocera.conf

- `/userdata/system/configs/scripts/conf.sh`

## Keyboard Shortcuts

`/userdata/system/configs/multimedia_keys.conf`
```
KEY_LEFTCTRL+KEY_LEFTSHIFT+KEY_LEFTALT+KEY_D 1  /userdata/system/configs/scripts/red.sh
KEY_LEFTCTRL+KEY_LEFTSHIFT+KEY_LEFTALT+KEY_E 1  /userdata/system/configs/scripts/yellow.sh
KEY_LEFTCTRL+KEY_LEFTSHIFT+KEY_LEFTALT+KEY_F 1  /userdata/system/configs/scripts/green.sh
```

- `/userdata/system/configs/scripts/shutdown.sh`
- `/userdata/system/configs/scripts/screen.sh`

# Monitor

## Turn [off/on](https://unix.stackexchange.com/questions/227876/how-to-set-custom-resolution-using-xrandr-when-the-resolution-is-not-available-i)

- `export DISPLAY=:0.0`
- `xrandr --output HDMI-2 --off -display :0.0`
- `xrandr --output HDMI-2 --mode 1280x1024 -display :0.0`

- https://forum.batocera.org/d/4327-forcing-different-screen-resolution
- https://askubuntu.com/questions/377937/how-do-i-set-a-custom-resolution


# Controllers

##  Test

- `sdl2-jstest -l`
- `evtest`

## Custom Retroarch

- https://forum.batocera.org/d/3041-solved-user-binds-buttons-in-retroarch-resetting-after-i-reopen-game
- https://forum.batocera.org/d/8738-changing-port-device-does-not-update-bindings/2
- https://forums.libretro.com/t/creating-hotkey-alternates-for-multiple-controllers/24093/4

## Spinner

- https://www.youtube.com/watch?v=0_aIkkObZWM
- https://neo-source.com/index.php?topic=3709.0
- https://forums.libretro.com/t/fb-neo-control-issues/34077/16
- Sensitivity: https://neo-source.com/index.php?topic=3986.0

# Cores

- [Keyboard input to get into MAME menu](https://www.reddit.com/r/batocera/comments/r5qxzh/having_trouble_with_mame_2003_plus_arcade_button/)

## Roms

- /userdata/roms/CORE
- `gamelist.xml` per core folder
- `media/TYPE` per core folder

## Per game settings

https://forum.batocera.org/d/6652-being-able-to-use-trackball-and-spinner-using-per-mouse-index

### Tempest

- move to mame-core

### GT99

- move to mame-core