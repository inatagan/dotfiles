#!/usr/bin/env bash
# change permission
# chmod +x myapps.sh
###update sources and uprade default base system
sudo apt update && sudo apt upgrade
### install my default apps
sudo apt install xfce4-whiskermenu-plugin sakura firefox-esr redshift redshift-gtk conky conky-all htop micro tmux curl qbittorrent vlc lm-sensors grub-customizer lightdm-gtk-greeter lightdm-gtk-greeter-settings
### install bluetooth packages
sudo apt install bluez-* pulseaudio-module-bluetooth blueman
sudo adduser $USER bluetooth
### Add zram for swap
# sudo apt install zram-tools
# edit this file to set the desired config
# sudo micro /etc/default/zramswap
### it's recomended to reboot the system now
