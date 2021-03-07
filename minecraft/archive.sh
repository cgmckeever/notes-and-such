#!/bin/bash

backups=/home/miner/backups
curdate=$(date +"%Y-%m-%d")
backup=minecraft-$curdate-backup

backup_path=/tmp/$backup

rm -rf $backup_path

for world in world world_nether world_the_end; do
    mkdir $backup_path/$world
    file=$(ls -t1 $backups/$world/ | head -n 1)
    cp $backups/$world/$file $backup_path/$world

    cd $backup_path/$world/
    tar -xvf $backup_path/$world/$file
    rm -rf $backup_path/$world/$file
done

cd /tmp
tar -czvf $backup.tar.gz $backup
rm $backup

ls -la
