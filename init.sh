#!/usr/bin/env bash
# change permission
# chmod +x init.sh
BASHRC=~/.bashrc
if [ -f "$BASHRC" ]; then
    rm ~/.bashrc && ln -s ~/dotfiles/.bashrc ~
    echo 'it works!!'
else
    ln -s ~/dotfiles/.bashrc ~
    echo 'huh?'
fi

AUTOSTART=~/.config/autostart
if [ -d "$AUTOSTART" ]; then
    rm -r $AUTOSTART && ln -s ~/dotfiles/config/autostart ~/.config
    echo 'it works!'
else
    ln -s ~/dotfiles/config/autostart ~/.config
    echo 'huh????'
fi

GIT=~/.config/git
if [ -d "$GIT" ]; then
    rm -r $GIT && ln -s ~/dotfiles/config/git ~/.config
    echo "directory \"$GIT\" exists"
else
    ln -s ~/dotfiles/config/git ~/.config
    echo 'huh?'
fi

HTOP=~/.config/htop
if [ -d "$HTOP" ]; then
    rm -r $HTOP && ln -s ~/dotfiles/config/htop ~/.config
    echo 'it works htop'
else
    ln -s ~/dotfiles/config/htop ~/.config
    echo 'huh htop'
fi

PAP=~/.config/papirus-folders
if [ -d "$PAP" ]; then
    rm -r $PAP && ln -s ~/dotfiles/config/papirus-folders ~/.config
    echo 'it works papirus-folders'
else
    ln -s ~/dotfiles/config/papirus-folders ~/.config
    echo 'huh papirus-folders'
fi

PULSE=~/.config/pulse
if [ -d "$PULSE" ]; then
    #rm -r $PULSE && ln -s ~/dotfiles/config/papirus-folders ~/.config
    echo 'pulse folder exists'
    if [ -f "$HOME/.config/pulse/client.conf" ]; then
        rm -f ~/.config/pulse/client.conf && ln -s ~/dotfiles/config/pulse/client.conf ~/.config/pulse
        echo 'client.conf was replaced sucessfully!!'
    else
        ln -s ~/dotfiles/config/pulse/client.conf ~/.config/pulse
        echo 'client file was linked sucessfully!!'
    fi
    if [ -f "$HOME/.config/pulse/daemon.conf" ]; then
        rm -f ~/.config/pulse/daemon.conf && ln -s ~/dotfiles/config/pulse/daemon.conf ~/.config/pulse
        echo 'daemon.conf was replaced sucessfully!!'
    else
        ln -s ~/dotfiles/config/pulse/daemon.conf ~/.config/pulse
        echo 'daemon file was linked sucessfully!!'
    fi
    if [ -f "$HOME/.config/pulse/default.pa" ]; then
        rm -f ~/.config/pulse/default.pa && ln -s ~/dotfiles/config/pulse/default.pa ~/.config/pulse
        echo 'default.pa was replaced sucessfully!!'
    else
        ln -s ~/dotfiles/config/pulse/default.pa ~/.config/pulse
        echo 'default file was linked sucessfully!!'
    fi
else
    mkdir ~/.config/pulse
    ln -s ~/dotfiles/config/pulse/client.conf ~/.config/pulse
    ln -s ~/dotfiles/config/pulse/daemon.conf ~/.config/pulse
    ln -s ~/dotfiles/config/pulse/default.pa ~/.config/pulse
    echo 'pulse folde was created and linked sucessfully!!'
fi

THUNAR=~/.config/Thunar
if [ -d "$THUNAR" ]; then
    rm -r $THUNAR && ln -s ~/dotfiles/config/Thunar ~/.config
    echo 'it works Thunar'
else
    ln -s ~/dotfiles/config/Thunar ~/.config
    echo 'huh Thunar'
fi

XFCE=~/.config/xfce4
if [ -d "$XFCE" ]; then
    rm -r $XFCE && ln -s ~/dotfiles/config/xfce4 ~/.config
    echo 'it works xfce4'
else
    ln -s ~/dotfiles/config/xfce4 ~/.config
    echo 'huh xfce4'
fi

REDSHIFT=~/.config/redshift.conf
if [ -f "$REDSHIFT" ]; then
    rm $REDSHIFT && ln -s ~/dotfiles/config/redshift.conf ~/.config
    echo 'it works redshift'
else
    ln -s ~/dotfiles/config/redshift.conf ~/.config
    echo 'huh red'
fi

STARSHIP=~/.config/starship.toml
if [ -f "$STARSHIP" ]; then
    rm $STARSHIP && ln -s ~/dotfiles/config/starship.toml ~/.config
    echo 'it works star'
else
    ln -s ~/dotfiles/config/starship.toml ~/.config
    echo 'huh star'
fi
