#!/bin/bash

clear
echo
echo

echo -n "Full execution [y]?  "
read input

dry="-n"
if [ ${input:-n} = "y" ]; then
  dry=""
  echo "full execution"
fi

echo
echo

rsync $dry -vvh -rlc --delete \
  --include 'roms/*' \
  --include 'gamelist.xml' \
  --exclude 'bios/**' \
  --exclude 'dead-roms/**' \
  --exclude 'kodi/**' \
  --exclude 'music/**' \
  --exclude 'roms/**' \
  --exclude 'roms/**/' \
  --exclude 'batocera.core*' \
  --exclude 'batocera.conf*' \
  --exclude 'ssh/*' \
  --exclude '.ssh/*' \
  /Users/cgmckeever/code/notes-and-such/gamestation/batocera/userdata/wolf128v34/ root@192.168.2.150:/userdata/ | tee /tmp/arcade-replica-sync.txt