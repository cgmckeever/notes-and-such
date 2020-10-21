# Prereqs

apt -y update && apt -y install default-jre screen git
apt install default-jdk

# Install

mkdir /usr/games/minecraft && cd /usr/games/minecraft && echo "eula=true" > eula.txt
wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar

# To Run 

cd /usr/games/minecraft && screen -S minecraft -d -m java -jar -Xms512M -Xmx2048M spigot-1.16.3.jar nogui

# Setup Systemd

touch /etc/systemd/system/minecraft.service
chmod +x /etc/systemd/system/minecraft.service

```
[Unit]
Description=Start Minecraft
After=network-online.target

[Service]
Type=simple
RemainAfterExit=yes
WorkingDirectory=/usr/games/minecraft
ExecStart=screen -S minecraft -d -m java -jar -Xms1024M -Xmx2048M spigot-1.16.3.jar nogui
TimeoutStartSec=0

[Install]
WantedBy=multi-user.target
```

systemctl daemon-reload
systemctl enable minecraft.service
