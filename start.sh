#!/bin/sh
cd server
echo "eula=true" > eula.txt
java -Xms1G -Xmx1G -jar paperclip.jar nogui
