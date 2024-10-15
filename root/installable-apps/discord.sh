apt update
apt install -y libatomic1

wget https://discord.com/api/download?platform=linux&format=deb
dpkg -i discord-0.0.71
sleep 1
rm discord-0.0.71
