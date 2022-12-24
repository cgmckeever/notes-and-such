#!/bin/bash

rsync -avvh --delete --delete-excluded \
  --exclude 'roms/*' \
  --exclude 'bios/*' \
  --exclude 'kodi/*' \
  --exclude 'music/*' \
  --exclude 'batocera.core*' \
  --exclude 'batocera.conf*' \
  root@192.168.2.48:/userdata/* /Users/cgmckeever/code/notes-and-such/gamestation/batocera/userdata/wolf128v34/