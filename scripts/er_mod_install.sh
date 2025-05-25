#!/usr/bin/env bash
# https://www.nexusmods.com/eldenring/mods/117
# https://github.com/Cloudef/ModEngine2/releases/tag/2.1.0.0-proton-v1

ln -s ~/.steam/debian-installation/steamapps/common/er_mods/dinput8.dll ~/.steam/debian-installation/steamapps/common/ELDEN\ RING/Game/dinput8.dll && echo 'dinput8.dll was linked sucessfully!!' || echo 'dinput8.dll was not linked!!'
ln -s ~/.steam/debian-installation/steamapps/common/er_mods/mod_loader_config.ini ~/.steam/debian-installation/steamapps/common/ELDEN\ RING/Game/mod_loader_config.ini && echo 'mod_loader_config was linked sucessfully!!' || echo 'mod_loader_config was not linked!!'
ln -s ~/.steam/debian-installation/steamapps/common/er_mods/modengine.toml ~/.steam/debian-installation/steamapps/common/ELDEN\ RING/Game/modengine.toml && echo 'modengine.toml was linked sucessfully!!' || echo 'modengine.toml was not linked!!'
ln -s ~/.steam/debian-installation/steamapps/common/er_mods/ermerchant.dll ~/.steam/debian-installation/steamapps/common/ELDEN\ RING/Game/ermerchant.dll && echo 'ermerchant.dll was linked sucessfully!!' || echo 'ermerchant.dll was not linked!!'
ln -s ~/.steam/debian-installation/steamapps/common/er_mods/ermerchant.ini ~/.steam/debian-installation/steamapps/common/ELDEN\ RING/Game/ermerchant.ini && echo 'ermerchant.ini was linked sucessfully!!' || echo 'ermerchant.ini was not linked!!'
ln -s ~/.steam/debian-installation/steamapps/common/er_mods/mods ~/.steam/debian-installation/steamapps/common/ELDEN\ RING/Game/mods && echo 'mods dir was linked sucessfully!!' || echo 'mods dir was not linked!!'
ln -s ~/.steam/debian-installation/steamapps/common/er_mods/mod ~/.steam/debian-installation/steamapps/common/ELDEN\ RING/Game/mod && echo 'mod dir was linked sucessfully!!' || echo 'mod dir was not linked!!'

# sed -i 's:mangohud %command%:echo "%command%" | sed 's/start_protected_game/eldenring/' | WINEDLLOVERRIDES="dinput8.dll=n,b" sh:' ~/.steam/debian-installation/userdata/236368582/config/localconfig.vdf

echo '--COMPLETE--'
