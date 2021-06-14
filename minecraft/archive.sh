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
    tar -xvf $file
    rm -rf $file
done

cd /tmp
archive=$backup.tar.gz
tar -czvf $archive $backup
rm -rf $backup

ls -la
echo "Archive: /tmp/$archive"
