# Setup
- https://github.com/RetroPie/RetroPie-Setup/wiki/First-Installation
- https://retropie.org.uk/forum/topic/4190/advmame-emulator-not-showing-up-in-retropie-4-0-2
- https://www.youtube.com/watch?v=VF4hKrjqwUY&index=4&list=PL6fNF9pYPP73Bnxw8iRC9LuLHdczqc9O-
- https://www.hanselman.com/blog/RetroPieAndXArcadeTankstickThePerfectRetroArcadePlusKeybindingsAndConfigAndHowto.aspx
- https://retropie.org.uk/forum/topic/106/trackball-working-in-mame4all-but-not-advmame/3

## VI

- sudo apt-get update && sudo apt-get -y install vim

# Key Mapping
- https://blog.petrockblock.com/wp-content/uploads/2014/11/RP-Xcade-Mapping.pdf

# ROMS
- https://github.com/RetroPie/RetroPie-Setup/wiki/Running-ROMs-from-a-USB-drive
- Arcade Punks

## Config

- http://newwiki.arcadecontrols.com/arcade.htm

## ~/.emulationstation/es_input.cfg
- Swap start/select a/b
- maybe not

## Tank Stick

- enable xarcade2jstick
 - if controller stops works, wipe emulation station controller configs (dumb)

## Configure Advance Mame Trackball Tank Stick

https://github.com/RetroPie/RetroPie-Setup/wiki/Spinners,-Trackballs,-Lightguns,-and-other-Mouse-Devices

### Test Mouse
- /opt/retropie/emulators/advmame/bin/advm

- vi /opt/retropie/configs/mame-advmame/advmame.rc
```
device_raw_mousedev[0] /dev/input/mouse0
device_raw_mousedev[1] /dev/input/mouse1

input_map[p1_trackballx] mouse[0,x] mouse[1,x] mouse[2,x] mouse[3,x]
input_map[p1_trackbally] mouse[0,y] mouse[1,y] mouse[2,y] mouse[3,y]

```

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
