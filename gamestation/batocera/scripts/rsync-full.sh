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

echo "test"
rsync $dry -vvh -rc --delete --delete-excluded \
  --include '/decorations/***' \
  --include '*/' \
  --include 'gamelist.xml' \
  --exclude '/bios/***' \
  --exclude '/dead-roms/***' \
  --exclude '/kodi/***' \
  --exclude '/music/***' \
  --exclude '/roms/***' \
  --exclude 'batocera.core*' \
  --exclude 'batocera.conf*' \
  root@192.168.2.48:/userdata/ /Users/cgmckeever/code/notes-and-such/gamestation/batocera/userdata/wolf128v34/ | tee /tmp/arcade-full-sync.txt

exit


#echo
#echo "syncing full"
## https://unix.stackexchange.com/questions/102211/rsync-ignore-owner-group-time-and-perms
#rsync $dry -vvh -rc --delete --delete-excluded \
#  --exclude '/bios/*' \
#  --exclude '/dead-roms/*' \
#  --exclude '/kodi/*' \
#  --exclude '/music/*' \
#  --exclude '/roms/*' \
#  --exclude 'batocera.core*' \
#  --exclude 'batocera.conf*' \
#  root@192.168.2.48:/userdata/ /Users/cgmckeever/code/notes-and-such/gamestation/batocera/userdata/wolf128v34/ | tee /tmp/arcade-full-sync.txt

#echo
#echo "syncing gamelist"
#rsync $dry -vvh -rc \
#  --exclude '/bios/*' \
#  --exclude '/dead-roms/*' \
#  --exclude '/kodi/*' \
#  --exclude '/music/*' \
#  --exclude '/roms/**/**/' \
#  --include '*/' \
#  --include 'gamelist.xml' \
#  --exclude '*' \
#  root@192.168.2.48:/userdata/ /Users/cgmckeever/code/notes-and-such/gamestation/batocera/userdata/wolf128v34/ | tee -a /tmp/arcade-full-sync.txt


