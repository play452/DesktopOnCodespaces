pip install textual
sleep 2
python3 installer.py
docker build -t desktoponcodespaces . --no-cache
cd ..

sudo apt update
sudo apt install -y jq

mkdir Save
cp -r DesktopOnCodespaces/root/config/* Save

json_file="DesktopOnCodespaces/options.json"
if jq ".enablekvm" "$json_file" | grep -q true; then
    docker run -dit --name=DesktopOnCodespaces -e PUID=1000 -e PGID=1000 --device=/dev/kvm --security-opt seccomp=unconfined -e TZ=Etc/UTC -e SUBFOLDER=/ -e TITLE=GamingOnCodespaces -p 3000:3000 --shm-size="2gb" -v $(pwd)/Save:/config --restart unless-stopped -v /var/run/docker.sock:/var/run/docker.sock desktoponcodespaces
else
    docker run -d --name=DesktopOnCodespaces -e PUID=1000 -e PGID=1000 --security-opt seccomp=unconfined -e TZ=Etc/UTC -e SUBFOLDER=/ -e TITLE=GamingOnCodespaces -p 3000:3000 --shm-size="2gb" -v $(pwd)/Save:/config --restart unless-stopped -v /var/run/docker.sock:/var/run/docker.sock desktoponcodespaces
fi
clear
echo "INSTALL FINISHED! it is on port 3000"
