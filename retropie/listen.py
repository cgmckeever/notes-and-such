#!/usr/bin/env python

import uinput
import sys
import time

def create_input():
   return uinput.Device([uinput.KEY_A, uinput.KEY_ENTER, uinput.KEY_LEFTSHIFT, uinput.KEY_ESC])

arg = sys.argv[1]

if arg == 'start':
    print('ENTER press')
    device = create_input()
    time.sleep(0.1)
    device.emit(uinput.KEY_ENTER, 1)
    time.sleep(0.1)
    device.emit(uinput.KEY_ENTER, 0)
elif arg == 'select':
    print('SELECT press')
elif arg == 'exit':
    print('SHIFT/ESCAPE press')
    device = create_input()
    time.sleep(0.1)
    device.emit(uinput.KEY_LEFTSHIFT, 1)
    device.emit(uinput.KEY_ESC, 1)
    time.sleep(0.1)
    device.emit(uinput.KEY_LEFTSHIFT, 0)
    device.emit(uinput.KEY_ESC, 0)
elif arg == 'a':
   print('A press')
   device = create_input()
   time.sleep(0.1)
   device.emit(uinput.KEY_A, 1)
   time.sleep(0.2)
   device.emit(uinput.KEY_A, 0)
