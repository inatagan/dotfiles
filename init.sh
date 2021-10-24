#!/usr/bin/env bash
# change permission
# chmod +x init.sh
BASHRC=~/.bashrc
if [ -f "$BASHRC" ]; then
    rm ~/.bashrc && ln -s ~/dotfiles/.bashrc ~
    echo 'BASHRC was replaced sucessfully!!'
else
    ln -s ~/dotfiles/.bashrc ~
    echo 'BASHRC was linked sucessfully!!'
fi

AUTOSTART=~/.config/autostart
if [ -d "$AUTOSTART" ]; then
    rm -r $AUTOSTART && ln -s ~/dotfiles/config/autostart ~/.config
    echo 'AUTOSTART directory was replaced sucessfully!!'
else
    ln -s ~/dotfiles/config/autostart ~/.config
    echo 'AUTOSTART files were linked sucessfully!!'
fi

GIT=~/.config/git
if [ -d "$GIT" ]; then
    rm -r $GIT && ln -s ~/dotfiles/config/git ~/.config
    echo 'GIT directory was replaced sucessfully!!'
else
    ln -s ~/dotfiles/config/git ~/.config
    echo 'GIT directory was linked sucessfully!!'
fi

HTOP=~/.config/htop
if [ -d "$HTOP" ]; then
    rm -r $HTOP && ln -s ~/dotfiles/config/htop ~/.config
    echo 'HTOP directory was replaced sucessfully'
else
    ln -s ~/dotfiles/config/htop ~/.config
    echo 'HTOP directory was linked sucessfully'
fi

PAP=~/.config/papirus-folders
if [ -d "$PAP" ]; then
    rm -r $PAP && ln -s ~/dotfiles/config/papirus-folders ~/.config
    echo 'PAPIRUS directory was replaced sucessfully'
else
    ln -s ~/dotfiles/config/papirus-folders ~/.config
    echo 'PAPIRUS directory was linked sucessfully'
fi

PULSE=~/.config/pulse
if [ -d "$PULSE" ]; then
    #rm -r $PULSE && ln -s ~/dotfiles/config/papirus-folders ~/.config
    echo '[ WARNING!! ] PULSE folder already exists!!'
    if [ -f "$HOME/.config/pulse/client.conf" ]; then
        rm -f ~/.config/pulse/client.conf && ln -s ~/dotfiles/config/pulse/client.conf ~/.config/pulse
        echo 'CLIENT.CONF was replaced sucessfully!!'
    else
        ln -s ~/dotfiles/config/pulse/client.conf ~/.config/pulse
        echo 'CLIENT.CONF was linked sucessfully!!'
    fi
    if [ -f "$HOME/.config/pulse/daemon.conf" ]; then
        rm -f ~/.config/pulse/daemon.conf && ln -s ~/dotfiles/config/pulse/daemon.conf ~/.config/pulse
        echo 'DAEMON.CONF was replaced sucessfully!!'
    else
        ln -s ~/dotfiles/config/pulse/daemon.conf ~/.config/pulse
        echo 'DAEMON.CONF was linked sucessfully!!'
    fi
    if [ -f "$HOME/.config/pulse/default.pa" ]; then
        rm -f ~/.config/pulse/default.pa && ln -s ~/dotfiles/config/pulse/default.pa ~/.config/pulse
        echo 'DEFAULT.PA was replaced sucessfully!!'
    else
        ln -s ~/dotfiles/config/pulse/default.pa ~/.config/pulse
        echo 'DEFAULT.PA was linked sucessfully!!'
    fi
else
    mkdir ~/.config/pulse
    ln -s ~/dotfiles/config/pulse/client.conf ~/.config/pulse
    ln -s ~/dotfiles/config/pulse/daemon.conf ~/.config/pulse
    ln -s ~/dotfiles/config/pulse/default.pa ~/.config/pulse
    echo 'PULSE directory was created and linked sucessfully!!'
fi

THUNAR=~/.config/Thunar
if [ -d "$THUNAR" ]; then
    rm -r $THUNAR && ln -s ~/dotfiles/config/Thunar ~/.config
    echo 'THUNAR directory was replaced sucessfully!!'
else
    ln -s ~/dotfiles/config/Thunar ~/.config
    echo 'THUNAR directory was linked sucessfully!!'
fi

XFCE=~/.config/xfce4
if [ -d "$XFCE" ]; then
    rm -r $XFCE && ln -s ~/dotfiles/config/xfce4 ~/.config
    echo 'XFCE4 directory was replaced sucessfully!!'
else
    ln -s ~/dotfiles/config/xfce4 ~/.config
    echo 'XFCE4 directory was linked sucessfully!!'
fi

REDSHIFT=~/.config/redshift.conf
if [ -f "$REDSHIFT" ]; then
    rm $REDSHIFT && ln -s ~/dotfiles/config/redshift.conf ~/.config
    echo 'REDSHIFT file was replaced sucessfully!!'
else
    ln -s ~/dotfiles/config/redshift.conf ~/.config
    echo 'REDSHIFT file was linked sucessfully!!'
fi

STARSHIP=~/.config/starship.toml
if [ -f "$STARSHIP" ]; then
    rm $STARSHIP && ln -s ~/dotfiles/config/starship.toml ~/.config
    echo 'STARSHIP file was replaced sucessfully!!'
else
    ln -s ~/dotfiles/config/starship.toml ~/.config
    echo 'STARSHIP file was linked sucessfully!!'
fi
