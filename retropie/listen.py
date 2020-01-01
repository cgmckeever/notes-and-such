import uinput
import sys

arg = sys.argv[1]

device = uinput.Device([uinput.KEY_LEFTSHIFT, uinput.KEY_ESC, uinput.KEY_ENTER])

if arg == 'start':
    print('start press')
    device.emit(uinput.KEY_ENTER, 1)
elif arg == 'select':
    print('select press')
elif arg == 'exit':
    print('exit emulator')
    device.emit(uinput.KEY_LEFTSHIFT, 1)
    device.emit(uinput.KEY_ESCAPE, 1)
