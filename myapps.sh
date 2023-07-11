#!/usr/bin/env bash
# change permission
# chmod +x myapps.sh
###update sources and uprade default base system
sudo apt update && sudo apt upgrade
### install my default apps
sudo apt install xfce4-whiskermenu-plugin sakura firefox-esr redshift redshift-gtk conky conky-all htop tmux curl qbittorrent vlc lm-sensors grub-customizer lightdm-gtk-greeter lightdm-gtk-greeter-settings
### install bluetooth packages
sudo apt install bluez-* pulseaudio-module-bluetooth blueman
sudo adduser $USER bluetooth
### it's recomended to reboot the system now
