# Prereqs

```
apt -y update && apt -y install default-jre screen git
apt install default-jdk vim
```

# Install

```
useradd -m miner; usermod --shell /bin/bash miner
mkdir -p /usr/games/minecraft && chown miner.miner /usr/games/minecraft
```

```
mkdir /usr/games/minecraft && cd /usr/games/minecraft && echo "eula=true" > eula.txt
wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
java -jar BuildTools.jar
```

- ln -s current jar to to spigot.latest.jar

# To Run 

```
cd /usr/games/minecraft && screen -S minecraft -d -m java -jar -Xms512M -Xmx2048M spigot.latest.jar nogui
```

# Setup Systemd

```
touch /etc/systemd/system/minecraft.service
```

```
[Unit]
Description=Start Minecraft
After=network-online.target

[Service]
User=miner
Type=simple
RemainAfterExit=yes
WorkingDirectory=/usr/games/minecraft
ExecStart=screen -S minecraft -d -m java -jar -Xms1024M -Xmx2048M spigot.latest.jar nogui
TimeoutStartSec=0

[Install]
WantedBy=multi-user.target
```

```
systemctl daemon-reload
systemctl enable minecraft.service

systemctl start minecraft.service
systemctl stop minecraft.service
```

# Resources

- [AWS](https://aws.amazon.com/getting-started/hands-on/run-your-own-minecraft-server/)
- [Quick Install](https://lemire.me/blog/2016/04/02/setting-up-a-robust-minecraft-server-on-a-raspberry-pi/)
- [systemd-simple](https://fatmin.com/2018/01/29/linux-how-to-start-a-minecraft-server-at-boot-via-systemd/)
- [systemd-advanced](https://teilgedanken.de/Blog/post/setting-up-a-minecraft-server-using-systemd/)

## Backups 
- https://github.com/nicolaschan/minecraft-backup

```
mkdir -p ~/backups/world
mkdir -p ~/backups/world_nether
mkdir -p ~/backups/world_the_end
```

```
./backup.sh -c -i /usr/games/minecraft/world -o ~/backups -m 30 -s minecraft
0 */2 * * * /root/backups/world.sh
```

### Restore

```
cd /usr/games/minecraft; \
mv world world.install; \
mv world_nether world_nether.install; \
mv world_the_end world_the_end.install
```

```
cd /tmp

mkdir world; mv *world.* world/
cd world; tar -xvf *; rm *.tar*; cd ..; mv world /usr/games/minecraft; ls

mkdir world_nether; mv *world_nether.* world_nether/
cd world_nether; tar -xvf *; rm *.tar*; cd ..; mv world_nether /usr/games/minecraft; ls

mkdir world_the_end; mv *world_the_end.* world_the_end/
cd world_the_end; tar -xvf *; rm *.tar*; cd ..; mv world_the_end /usr/games/minecraft; ls
```
