# FACTORIO SERVER DOCKER

https://wiki.factorio.com/Multiplayer#Miscellaneous_Tips

# SETUP

```bash
git clone https://github.com/magusd/factorio.git

cp server-adminlist.example.json server-adminlist.json
cp server-settings.example.json saves/server-settings.json


docker compose build
docker compose run factorio /opt/factorio/bin/x64/factorio --create saves/magusd.zip
docker compose up -d

```

# Connect

On factorio
-> Multiplayer
-> Connect
-> localhost:34197
