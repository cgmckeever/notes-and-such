import uinput
import sys

arg = sys.argv[1]

device = uinput.Device([uinput.KEY_LEFTSHIFT, uinput.KEY_ESC, uinput.KEY_ENTER])

if arg == 'start':
    print('ENTER press')
    device.emit(uinput.KEY_ENTER, 1)
elif arg == 'select':
    print('SELECT press')
elif arg == 'exit':
    print('SHIFT/ESCAPE press')
    device.emit(uinput.KEY_LEFTSHIFT, 1)
    device.emit(uinput.KEY_ESC, 1)
