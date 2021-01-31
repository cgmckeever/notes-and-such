#!/bin/bash

backups=/root/backups
minecraft=/usr/games/minecraft/

echo world
mkdir -p /root/backups/world
$backups/backup.sh -c -i $minecraft/world -o $backups/world -s minecraft -m 10

sleep 10
echo world_nether
mkdir -p /root/backups/world_nether
$backups/backup.sh -c -i $minecraft/world_nether -o $backups/world_nether -s minecraft

sleep 10
echo world_the_end
mkdir -p /root/backups/world_the_end
$backups/backup.sh -c -i $minecraft/world_the_end -o $backups/world_the_end -s minecraft
