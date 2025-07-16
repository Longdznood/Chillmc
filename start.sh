#!/bin/sh
cd server

# Tải Geyser nếu chưa có
if [ ! -f "plugins/Geyser-Spigot.jar" ]; then
  echo "Đang tải GeyserMC..."
  mkdir -p plugins
  curl -L -o plugins/Geyser-Spigot.jar https://download.geysermc.org/builds/Geyser-Spigot/849/download
fi

# Chấp nhận EULA
echo "eula=true" > eula.txt

# Chạy server
java -Xms1G -Xmx1G -jar paperclip.jar nogui
