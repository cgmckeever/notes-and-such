# Setup
- https://github.com/RetroPie/RetroPie-Setup/wiki/First-Installation

## Resolution

- sudo raspi-config
- Go to: >Advanced Option > Resolution >

## WIFI

- rfkill list wlan
- sudo rfkill unblock all

## VI

- sudo apt-get update && sudo apt-get -y install vim
- :set cpoptions+=x

## bluetooth

https://www.cnet.com/how-to/how-to-setup-bluetooth-on-a-raspberry-pi-3/
- sudo bluetoothctl
- agent on; default-agent
- scan on
- trust XX
- pair XX
- connect XX

- extra: sudo apt-get install bluez
- sudo busctl tree org.bluez

## Advance Mame
- https://retropie.org.uk/forum/topic/4190/advmame-emulator-not-showing-up-in-retropie-4-0-2
- https://retropie.org.uk/forum/topic/106/trackball-working-in-mame4all-but-not-advmame/3


# Key Mapping
- https://blog.petrockblock.com/wp-content/uploads/2014/11/RP-Xcade-Mapping.pdf

## Test GamePads

- cat /proc/bus/input/devices
- ls /dev/input/js*
- jstest /dev/input/js*

### USB ENCODER

```
 <inputConfig type="joystick" deviceName="DragonRise Inc.   Generic   USB  Joystick  " deviceGUID="03000000790000000600000010010000">
    <input name="a" type="button" id="1" value="1" />
    <input name="b" type="button" id="0" value="1" />
    <input name="down" type="axis" id="1" value="1" />
    <input name="hotkeyenable" type="button" id="8" value="1" />
    <input name="left" type="axis" id="0" value="-1" />
    <input name="leftshoulder" type="button" id="5" value="1" />
    <input name="lefttrigger" type="button" id="6" value="1" />
    <input name="right" type="axis" id="0" value="1" />
    <input name="rightshoulder" type="button" id="2" value="1" />
    <input name="righttrigger" type="button" id="7" value="1" />
    <input name="select" type="button" id="8" value="1" />
    <input name="start" type="button" id="9" value="1" />
    <input name="up" type="axis" id="1" value="-1" />
    <input name="x" type="button" id="4" value="1" />
    <input name="y" type="button" id="3" value="1" />
  </inputConfig>
```

## TOMEE NES USB

- https://github.com/libretro/retroarch-joypad-autoconfig/blob/master/udev/Tomee_NES_to_USB_Adapter.cfg
```
  <inputConfig type="joystick" deviceName=" NES PC Game Pad     NES PC Game Pad   " deviceGUID="03000000571d00002100000010010000">
     <input name="a" type="button" id="0" value="1" />
     <input name="b" type="button" id="1" value="1" />
     <input name="down" type="axis" id="1" value="1" />
     <input name="hotkeyenable" type="button" id="2" value="1" />
     <input name="left" type="axis" id="0" value="-1" />
     <input name="right" type="axis" id="0" value="1" />
     <input name="select" type="button" id="2" value="1" />
     <input name="start" type="button" id="3" value="1" />
     <input name="up" type="axis" id="1" value="-1" />
   </inputConfig>
```

### Gamepad select

- https://github.com/meleu/RetroPie-joystick-selection

## RetroArch

- Log:  /dev/shm/runcommand.log

https://github.com/RetroPie/RetroPie-Setup/wiki/Nintendo-Entertainment-System
```
Either Remap the select button

In the NES RetroArch config file, /opt/retropie/configs/nes/retroarch.cfg, above the #include" line, add the following line:

input_player1_select_btn = "x"
where x is the button number you wish to remap the select button to.
```

### Remove Frame Rate

```
Set framecount_show = "false" in /opt/retropie/configs/all/retroarch.cfg (unless you have system / core / game overrides). In the GUI is under Onscreen Display > Onscreen Notifications > Display Frame Count.
```

## ~/.emulationstation/es_input.cfg
- Swap start/select a/b (maybe not)

# ROMS
- https://github.com/RetroPie/RetroPie-Setup/wiki/Running-ROMs-from-a-USB-drive
- Arcade Punks

## Compudaze
-- remove bezels in emulator config

## Config

- http://newwiki.arcadecontrols.com/arcade.htm

# Tank Stick

- https://www.hanselman.com/blog/RetroPieAndXArcadeTankstickThePerfectRetroArcadePlusKeybindingsAndConfigAndHowto.aspx
- enable xarcade2jstick
 - if controller stops works, wipe emulation station controller configs (dumb)

## Configure Advance Mame Trackball Tank Stick

https://github.com/RetroPie/RetroPie-Setup/wiki/Spinners,-Trackballs,-Lightguns,-and-other-Mouse-Devices

# Mouse

- https://github.com/RetroPie/RetroPie-Setup/wiki/Spinners,-Trackballs,-Lightguns,-and-other-Mouse-Devices

## Test

- /opt/retropie/emulators/advmame/bin/advm

## Configure

- vi /opt/retropie/configs/mame-advmame/advmame.rc
```
device_raw_mousedev[0] /dev/input/mouse0
device_raw_mousedev[1] /dev/input/mouse1

input_map[p1_trackballx] mouse[0,x] mouse[1,x] mouse[2,x] mouse[3,x]
input_map[p1_trackbally] mouse[0,y] mouse[1,y] mouse[2,y] mouse[3,y]

```

## WIImote / Dolphin Bar

### Games
https://retropie.org.uk/forum/topic/10984/wii-remote-for-use-a-gun/38

```
device_mouse raw
device_raw_mousedev[0] /dev/input/mouse0
device_raw_mousedev[1] /dev/input/mouse1
device_raw_mousedev[2] /dev/input/mouse2
device_raw_mousedev[3] /dev/input/mouse3
device_raw_mousetype[0] ps2
device_raw_mousetype[1] ps2
device_raw_mousetype[2] ps2
device_raw_mousetype[3] ps2
```

### Duck Hunt NES(topia)

https://www.reddit.com/r/RetroArch/comments/9evqxc/nestopia_core_cant_fire_zapper_in_duck_hunt/
```
Edit1: Guys, a few minutes after posting this comment, I found a solution ... go to the Input tab of the Retroarch Settings tab, and in the settings of Player2 set the "User 2 Gun Trigger" to the Left Mouse Button. This does not make sense to me, but, it works! :P 
```

https://retropie.org.uk/forum/topic/16915/retroarch-light-gun-game-mode-selection/14
```
As an aside to anyone looking to change game modes in the mean time, gamepad selection is possible as long as the NES 'Select' button is mapped, or remapped away from the RetroArch hotkey.
```

# Retroarch config

## /opt/retropie/configs/all/retroarch.cfg
```
input_player1_a = "z"
input_player1_b = "shift"
input_player1_y = "ctrl"
input_player1_x = "alt"
input_player1_start = "num1"
input_player1_select = "num3"
input_player1_l = "space"
input_player1_r = "x"
input_player1_left = "left"
input_player1_right = "right"
input_player1_up = "up"
input_player1_down = "down"
input_player1_l2 = "c"
input_player1_r2 = "num5"
input_player1_l3 = nul
input_player1_r3 = nul

input_player2_a = "e"
input_player2_b = "w"
input_player2_y = "a"
input_player2_x = "s"
input_player2_start = "num2"
input_player2_select = "num4"
input_player2_l = "q"
input_player2_r = "leftbracket"
input_player2_left = "d"
input_player2_right = "g"
input_player2_up = "r"
input_player2_down = "f"
input_player2_l2 = "rightbracket"
input_player2_r2 = "num6"
input_player2_l3 = nul
input_player1_r3 = nul

input_enable_hotkey_btn = num1
input_exit_emulator_btm = num3
input_pause_toggle_btn = num2
```