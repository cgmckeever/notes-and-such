#!/usr/bin/env python

import uinput
import sys
import time

def create_input(sleep):
   device = uinput.Device([
      uinput.KEY_A,
      uinput.KEY_BACKSLASH,
      uinput.KEY_ENTER,
      uinput.KEY_LEFTSHIFT,
      uinput.KEY_ESC
    ])

   # 1 = press; 0 = release
   # device.emit(uinput.KEY_ENTER, 1)
   time.sleep(sleep)
   return device

arg = sys.argv[1]

if arg == 'start':
    print('ENTER press')
    device = create_input(0.2)
    device.emit(uinput.KEY_ENTER, 1)
    time.sleep(0.1)
    device.emit(uinput.KEY_ENTER, 0)
elif arg == 'select':
    print('SELECT press')
    device = create_input(0.2);
    device.emit(uinput.KEY_LEFTSHIFT, 1)
    time.sleep(0.2)
    device.emit(uinput.KEY_LEFTSHIFT, 0)
elif arg == 'exit':
    ## This much match whatever the
    ## emulator/retroarch is expecting
    print('BACKSLASH/ENTER press')
    device = create_input(0.2)
    device.emit(uinput.KEY_BACKSLASH, 1)
    device.emit(uinput.KEY_ENTER, 1)
    time.sleep(0.3)
    device.emit(uinput.KEY_BACKSLASH, 0)
    device.emit(uinput.KEY_ENTER, 0)
elif arg == 'a':
   print('A press')
   device = create_input(0.3);
   device.emit_click(uinput.KEY_A)
