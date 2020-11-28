# Setup
- https://github.com/RetroPie/RetroPie-Setup/wiki/First-Installation

## Addtional Installs

### VI

- sudo apt-get update && sudo apt-get -y install vim
- :set cpoptions+=x


## Resolution

- sudo raspi-config
- Go to: >Advanced Option > Resolution >

## Audio

- Fixing static `/boot/config.txt`

```
audio_pwm_mode=2
````

## WIFI

- rfkill list wlan
- sudo rfkill unblock all


## Bluetooth

https://www.cnet.com/how-to/how-to-setup-bluetooth-on-a-raspberry-pi-3/
- sudo bluetoothctl
- agent on; default-agent
- scan on
- trust XX
- pair XX
- connect XX

- extra: sudo apt-get install bluez
- sudo busctl tree org.bluez

# General Setup

## RetroArch

- Log:  `/dev/shm/runcommand.log`

## Remove Frame Rate

```
Set framecount_show = "false" in /opt/retropie/configs/all/retroarch.cfg (unless you have system / core / game overrides). In the GUI is under Onscreen Display > Onscreen Notifications > Display Frame Count.
```

# ROMS
- https://github.com/RetroPie/RetroPie-Setup/wiki/Running-ROMs-from-a-USB-drive
- Arcade Punks

## Compudaze
-- remove bezels in retroarch emulator config

# [Trackball](https://github.com/RetroPie/RetroPie-Setup/wiki/Spinners,-Trackballs,-Lightguns,-and-other-Mouse-Devices)

## Advance Mame

- https://retropie.org.uk/forum/topic/4190/advmame-emulator-not-showing-up-in-retropie-4-0-2
- https://retropie.org.uk/forum/topic/106/trackball-working-in-mame4all-but-not-advmame/3

### Test

- /opt/retropie/emulators/advmame/bin/advm

### Configure

- vi /opt/retropie/configs/mame-advancemame/advmame-1.4.rc

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

- vi /opt/retropie/configs/mame-advmame/advmame.rc

```
device_raw_mousedev[0] /dev/input/mouse0
device_raw_mousedev[1] /dev/input/mouse1

input_map[p1_trackballx] mouse[0,x] mouse[1,x] mouse[2,x] mouse[3,x]
input_map[p1_trackbally] mouse[0,y] mouse[1,y] mouse[2,y] mouse[3,y]

```

## Mame2003

- retroarch-core-options.cfg

```
mame2003-dialsharexy = "enable"
mame2003-mame_current_mouse_enable = "enabled"
```

- /opt/retropie/configs/arcade/retroarch.cfg
```
input_player1_mouse_index = "XXX"
```

# [GamePads](http://newwiki.arcadecontrols.com/arcade.htm)

## Test

- cat /proc/bus/input/devices
- ls /dev/input/js*
- jstest /dev/input/js*

## Emulation Station

- ~/.emulationstation/es_input.cfg
- [Not saving](https://retropie.org.uk/forum/topic/24483/es_input-cfg-wont-update-retroarch-autoconfigs-not-created-error-saving-manually/16)

## [Joystick Select](https://github.com/meleu/RetroPie-joystick-selection)

- Software to allow per system gamepad selection with fallback to defaults. Good for pluggable console gamepads

## X-Arcade Key Mapping

These are older steps needed before the new X-Arcade encoder.

- [Standard mapping for keyboard based profile for X-Arcade](https://blog.petrockblock.com/wp-content/uploads/2014/11/RP-Xcade-Mapping.pdf)
- [Key Bindings](https://www.hanselman.com/blog/RetroPieAndXArcadeTankstickThePerfectRetroArcadePlusKeybindingsAndConfigAndHowto.aspx)
- Newer adapaters make this simpler

### enable xarcade2jstick

- if controller stops works, wipe emulation station controller configs (dumb)

### Advance Mame Trackball Tank Stick

- https://github.com/RetroPie/RetroPie-Setup/wiki/Spinners,-Trackballs,-Lightguns,-and-other-Mouse-Devices

### Retroarch Config

- /opt/retropie/configs/all/retroarch.cfg

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

## DragonRise USB ENCODER

### ES Config
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

### Retroarch

- https://github.com/libretro/retroarch-joypad-autoconfig/blob/master/udev/Tomee_NES_to_USB_Adapter.cfg

### ES Config
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

## Mayflash MegaDrive

### Retroarch

```
input_device = "Mayflash limited Mayflash MD USB Adapter"
input_driver = "udev"
input_l_btn = "6"
input_load_state_btn = "6"
input_start_btn = "9"
input_exit_emulator_btn = "9"
input_down_btn = "14"
input_r_btn = "2"
input_save_state_btn = "2"
input_right_btn = "13"
input_state_slot_increase_btn = "13"
input_select_btn = "7"
input_left_btn = "15"
input_state_slot_decrease_btn = "15"
input_up_btn = "12"
input_a_btn = "1"
input_b_btn = "0"
input_reset_btn = "0"
input_enable_hotkey_btn = "7"
input_x_btn = "4"
input_menu_toggle_btn = "4"
input_y_btn = "3"
```

## NES Contoller

- [Add saelect button](https://github.com/RetroPie/RetroPie-Setup/wiki/Nintendo-Entertainment-System)
```
Either Remap the select button

In the NES RetroArch config file, /opt/retropie/configs/nes/retroarch.cfg, above the #include" line, add the following line:

input_player1_select_btn = "x"
where x is the button number you wish to remap the select button to.
```

## WIImote / Dolphin Bar

- [Games List](https://retropie.org.uk/forum/topic/10984/wii-remote-for-use-a-gun/38)

### Duck Hunt NES(topia)

- https://www.reddit.com/r/RetroArch/comments/9evqxc/nestopia_core_cant_fire_zapper_in_duck_hunt/
```
Edit1: Guys, a few minutes after posting this comment, I found a solution ... go to the Input tab of the Retroarch Settings tab, and in the settings of Player2 set the "User 2 Gun Trigger" to the Left Mouse Button. This does not make sense to me, but, it works! :P
```

- https://retropie.org.uk/forum/topic/16915/retroarch-light-gun-game-mode-selection/14
```
As an aside to anyone looking to change game modes in the mean time, gamepad selection is possible as long as the NES 'Select' button is mapped, or remapped away from the RetroArch hotkey.
```

## [XBOXDRV for Analog deadzones](https://retropie.org.uk/docs/Universal-Controller-Calibration-%26-Mapping-Using-xboxdrv/)

If an analog needs to be overwritten to allow better deadzone

### Testing

- List devices `cat /proc/bus/input/devices`
- List events `ls /dev/input/by-id/`
- Show events `evtest /dev/input/event[•]`
- Kill xboxdrv `sudo killall xboxdrv`


### GRS Flight Yoke

```
sudo /opt/retropie/supplementary/xboxdrv/bin/xboxdrv \
    --evdev /dev/input/by-id/usb-Baolian_industry_Co.__Ltd._BL_flight_yoke_#1_8D6D17A65548-event-joystick \
    --silent \
    --detach-kernel-driver \
    --force-feedback \
    --deadzone-trigger 0% \
    --deadzone 0% \
    --mimic-xpad \
    --evdev-absmap ABS_X=x1,ABS_Y=y1 \
    --evdev-keymap BTN_TRIGGER=a,BTN_THUMB=b,BTN_THUMB2=x,BTN_TOP=y \
    --ui-axismap x2=void,y2=void,lt=void,rt=void \
    --ui-buttonmap lb=void,rb=void,tl=void,tr=void,guide=void,back=void,start=void \
    &
```
