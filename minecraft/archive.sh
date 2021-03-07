#!/bin/bash

backups=/home/miner/backups
curdate=$(date +"%Y-%m-%d")
backup=/tmp/minecraft-$curdate-backup

rm -rf $backup
mkdir -p $backup

for world in world world_nether world_the_end; do
    mkdir $backup/$world
    file=$(ls -t1 $backups/$world/ |  head -n 1)
    cp $backups/$world/$file $backup/$world

    cd $backup/$world/
    tar -xvf $backup/$world/*
    rm -rf $backup/$world/*.tar*
done

tar -czvf $backup.tar.gz $backup

ls -la /tmp
