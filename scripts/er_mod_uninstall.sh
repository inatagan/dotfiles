#!/usr/bin/env bash
# https://www.nexusmods.com/eldenring/mods/117
# https://github.com/Cloudef/ModEngine2/releases/tag/2.1.0.0-proton-v1

rm ~/.steam/debian-installation/steamapps/common/ELDEN\ RING/Game/dinput8.dll && echo 'dinput8.dll was unlinked sucessfully!!' || echo 'dinput8.dll Oops!!'
rm ~/.steam/debian-installation/steamapps/common/ELDEN\ RING/Game/mod_loader_config.ini && echo 'mod_loader_config.ini was unlinked sucessfully!!' || echo 'mod_loader_config.ini Oops!!'
rm ~/.steam/debian-installation/steamapps/common/ELDEN\ RING/Game/modengine.toml && echo 'modengine.toml was unlinked sucessfully!!' || echo 'modengine.toml Oops!!'
rm ~/.steam/debian-installation/steamapps/common/ELDEN\ RING/Game/ermerchant.dll && echo 'ermerchant.dll was unlinked sucessfully!!' || echo 'ermerchant.dll Oops!!'
rm ~/.steam/debian-installation/steamapps/common/ELDEN\ RING/Game/ermerchant.ini && echo 'ermerchant.ini was unlinked sucessfully!!' || echo 'ermerchant.ini Oops!!'
rm -r ~/.steam/debian-installation/steamapps/common/ELDEN\ RING/Game/mods && echo 'mods was unlinked sucessfully!!' || echo 'mods Oops!!'
rm -r ~/.steam/debian-installation/steamapps/common/ELDEN\ RING/Game/mod && echo 'mod was unlinked sucessfully!!' || echo 'mod Oops!!'

# sed -i 's:echo "%command%" | sed 's/start_protected_game/eldenring/' | WINEDLLOVERRIDES="dinput8.dll=n,b" sh:mangohud %command%:' ~/.steam/debian-installation/userdata/236368582/config/localconfig.vdf

echo '--COMPLETE--'
