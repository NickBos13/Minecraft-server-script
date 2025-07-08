mkdir Minecraft-Server
cd Minecraft-Server
curl -o server.jar https://piston-data.mojang.com/v1/objects/05e4b48fbc01f0385adb74bcff9751d34552486c/server.jar
java -Xmx1024M -Xms1024M -jar server.jar nogui
del eula.txt
curl -o eula.txt https://0x0.st/8GOW.txt
echo java -Xmx2048M -Xms512M -jar server.jar nogui > start-server.bat
echo curl -o server.jar https://piston-data.mojang.com/v1/objects/05e4b48fbc01f0385adb74bcff9751d34552486c/server.jar > updater.bat
@echo off
(
echo @echo off
echo set /p userinput=Give amount of RAM in MB:
echo ^> start-server.bat echo java -Xmx%%userinput%%M -Xms512M -jar server.jar nogui
) > ramchanger.bat

java -Xmx2048M -Xms512M -jar server.jar nogui

