#!/usr/bin/env bash
# change permission
# chmod +x init.sh
# . ./scripts/msg.sh
### TO DO ###
# Refactor code
# remove if else structures and
# replace it with 'ln -s -f <source> <target>'
# the -f flag alreay removes any content that might 
# be at the destination path.
#############

### Install themes
ICONS=~/.icons
### extraxting cursor files
if [ -d "$ICONS" ]; then
    for a in themes/cursors/*.tar.gz
    do
        tar xzf $a -C $ICONS
    done
else
    mkdir $ICONS
    for a in themes/cursors/*.tar.gz
    do
        tar xzf $a -C $ICONS
    done
fi

### extracting icons themes
if [ -d "$ICONS" ]; then
    for a in themes/icons_pack/*.tar.xz
    do
        tar xf $a -C $ICONS
    done
else
    mkdir $ICONS
    for a in themes/icons_pack/*.tar.xz
    do
        tar xf $a -C $ICONS
    done
fi

### my default fonts
FONTS=~/.fonts
if [ -d "$FONTS" ]; then
    for a in fonts/*.zip
    do
        unzip -o $a -d $FONTS
    done
else
    mkdir $FONTS
    for a in fonts/*.zip
    do
        unzip -o $a -d $FONTS
    done
fi

### my default theme
THEMES=~/.themes
if [ -d "$THEMES" ]; then
    git clone https://github.com/inatagan/eva-01.git ~/.themes/eva-01
else
    mkdir $THEMES
    git clone https://github.com/inatagan/eva-01.git ~/.themes/eva-01
fi

### BASHRC=~/.bashrc --ALIASES-ONLY
#ln -s -f ~/dotfiles/.bashrc ~ && echo 'BASHRC was linked sucessfully!!' || echo 'BASHRC was not linked!!'
ln -s -f ~/dotfiles/.bash_aliases ~ && echo 'BASH_ALIASES was linked sucessfully!!' || echo 'BASHRC was not linked!!'

### CONKYRC=~/.conkyrc
ln -s -f ~/dotfiles/.conkyrc ~ && echo 'CONKYRC was linked sucessfully!!' || echo 'CONKYRC was not linked!!'

### AUTOSTART=~/.config/autostart
ln -s -f ~/dotfiles/config/autostart ~/.config && echo 'AUTOSTART files were linked sucessfully!!' || echo 'AUTOSTART was not linked!!'

### GIT=~/.config/git
ln -s -f ~/dotfiles/config/git ~/.config && echo 'GIT directory was linked sucessfully!!' || echo 'GIT was not linked!!'

### HTOP=~/.config/htop
ln -s -f ~/dotfiles/config/htop ~/.config && echo 'HTOP directory was linked sucessfully' || echo 'HTOP was not linked'

### PAP=~/.config/papirus-folders
#ln -s -f ~/dotfiles/config/papirus-folders ~/.config && echo 'PAPIRUS directory was linked sucessfully' || echo 'PAPIRUS was not linked!!'

### Pulse config and bluetooth audio
PULSE=~/.config/pulse
if [ -d "$PULSE" ]; then
    echo '[ WARNING!! ] PULSE folder already exists!!'
    if [ -f "$HOME/.config/pulse/client.conf" ]; then
        rm -f ~/.config/pulse/client.conf && ln -s ~/dotfiles/config/pulse/client.conf ~/.config/pulse && echo 'CLIENT.CONF was replaced sucessfully!!' || echo 'CLIENT.CONF was not replaced!!'
    else
        ln -s ~/dotfiles/config/pulse/client.conf ~/.config/pulse && echo 'CLIENT.CONF was linked sucessfully!!' || echo 'CLIENT.CONF was not linked!!'
    fi
    if [ -f "$HOME/.config/pulse/daemon.conf" ]; then
        rm -f ~/.config/pulse/daemon.conf && ln -s ~/dotfiles/config/pulse/daemon.conf ~/.config/pulse && echo 'DAEMON.CONF was replaced sucessfully!!' || echo 'DAEMON.CONF was not replaced'
    else
        ln -s ~/dotfiles/config/pulse/daemon.conf ~/.config/pulse && echo 'DAEMON.CONF was linked sucessfully!!' || echo 'DAEMON.CONF was not linked!!'
    fi
    if [ -f "$HOME/.config/pulse/default.pa" ]; then
        rm -f ~/.config/pulse/default.pa && ln -s ~/dotfiles/config/pulse/default.pa ~/.config/pulse && echo 'DEFAULT.PA was replaced sucessfully!!' || echo 'DEFAULT.PA was not replaced!!'
    else
        ln -s ~/dotfiles/config/pulse/default.pa ~/.config/pulse && echo 'DEFAULT.PA was linked sucessfully!!' || echo 'DEFAULT.PA was not linked!!'
    fi
else
    mkdir ~/.config/pulse
    ln -s ~/dotfiles/config/pulse/client.conf ~/.config/pulse
    ln -s ~/dotfiles/config/pulse/daemon.conf ~/.config/pulse
    ln -s ~/dotfiles/config/pulse/default.pa ~/.config/pulse
    echo 'PULSE directory was created and linked sucessfully!!'
fi

### TMUX=~/.config/tmux
ln -s -f ~/dotfiles/config/tmux ~/.config && echo 'TMUX directory was linked sucessfully!!' || echo 'TMUX was not linked!!'

### workaround for systemd not killing xconfd
### shut down the panel first
xfce4-panel --quit
### kill the xfce4 configuration daemon
pkill xfconfd
### link config files
XFCE=~/.config/xfce4
if [ -d "$XFCE" ]; then
    rm -rf $XFCE && ln -s ~/dotfiles/config/xfce4 ~/.config && echo 'XFCE4 directory was replaced sucessfully!!' || echo 'XFCE4 was not replaced!!'
else
    ln -s ~/dotfiles/config/xfce4 ~/.config && echo 'XFCE4 directory was linked sucessfully!!' || echo 'XFCE4 was not linked!!'
fi
### Thunar config
#THUNAR=~/.config/Thunar
#if [ -d "$THUNAR" ]; then
#    rm -r $THUNAR && ln -s ~/dotfiles/config/Thunar ~/.config && echo 'THUNAR directory was replaced sucessfully!!' || echo 'THUNAR was not replaced!!'
#else
#    ln -s ~/dotfiles/config/Thunar ~/.config && echo 'THUNAR directory was linked sucessfully!!' || echo 'THUNAR was not linked!!'
#fi
# restart xfce panel
xfce4-panel

#REDSHIFT=~/.config/redshift.conf
ln -s -f ~/dotfiles/config/redshift.conf ~/.config && echo 'REDSHIFT file was linked sucessfully!!' || echo 'REDSHIFT was not linked!!'

#STARSHIP=~/.config/starship.toml
#ln -s -f ~/dotfiles/config/starship.toml ~/.config && echo 'STARSHIP file was linked sucessfully!!' || echo 'STARSHIP was not linked!!'
