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
BASHRC=~/.bashrc
if [ -f "$BASHRC" ]; then
    rm ~/.bashrc && ln -s ~/dotfiles/.bashrc ~ && echo 'BASHRC was replaced sucessfully!!' || echo 'BASHRC was not replaced!!'
else
    ln -s ~/dotfiles/.bashrc ~ && echo 'BASHRC was linked sucessfully!!' || echo 'BASHRC was not linked!!'
fi

CONKYRC=~/.conkyrc
if [ -f "$CONKYRC" ]; then
    rm ~/.conkyrc && ln -s ~/dotfiles/.conkyrc ~ && echo 'CONKYRC was replaced sucessfully!!' || echo 'CONKYRC was not replaced!!'
else
    ln -s ~/dotfiles/.conkyrc ~ && echo 'CONKYRC was linked sucessfully!!' || echo 'CONKYRC was not linked!!'
fi

AUTOSTART=~/.config/autostart
if [ -d "$AUTOSTART" ]; then
    rm -r $AUTOSTART && ln -s ~/dotfiles/config/autostart ~/.config && echo 'AUTOSTART directory was replaced sucessfully!!' || echo 'AUTOSTART was not replaced!!'
else
    ln -s ~/dotfiles/config/autostart ~/.config && echo 'AUTOSTART files were linked sucessfully!!' || echo 'AUTOSTART was not linked!!'
fi

GIT=~/.config/git
if [ -d "$GIT" ]; then
    rm -r $GIT && ln -s ~/dotfiles/config/git ~/.config && echo 'GIT directory was replaced sucessfully!!' || echo 'GIT was not replaced!!'
else
    ln -s ~/dotfiles/config/git ~/.config && echo 'GIT directory was linked sucessfully!!' || echo 'GIT was not linked!!'
fi

HTOP=~/.config/htop
if [ -d "$HTOP" ]; then
    rm -r $HTOP && ln -s ~/dotfiles/config/htop ~/.config && echo 'HTOP directory was replaced sucessfully' || echo 'HTOP was not replaced!!'
else
    ln -s ~/dotfiles/config/htop ~/.config && echo 'HTOP directory was linked sucessfully' || echo 'HTOP was not linked'
fi

PAP=~/.config/papirus-folders
if [ -d "$PAP" ]; then
    rm -r $PAP && ln -s ~/dotfiles/config/papirus-folders ~/.config && echo 'PAPIRUS directory was replaced sucessfully' || echo 'PAPIRUS was not replaced!!'
else
    ln -s ~/dotfiles/config/papirus-folders ~/.config && echo 'PAPIRUS directory was linked sucessfully' || echo 'PAPIRUS was not linked!!'
fi

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

THUNAR=~/.config/Thunar
if [ -d "$THUNAR" ]; then
    rm -r $THUNAR && ln -s ~/dotfiles/config/Thunar ~/.config && echo 'THUNAR directory was replaced sucessfully!!' || echo 'THUNAR was not replaced!!'
else
    ln -s ~/dotfiles/config/Thunar ~/.config && echo 'THUNAR directory was linked sucessfully!!' || echo 'THUNAR was not linked!!'
fi

TMUX=~/.config/tmux
if [ -d "$TMUX" ]; then
    rm -r $TMUX && ln -s ~/dotfiles/config/tmux ~/.config && echo 'TMUX directory was replaced sucessfully!!' || echo 'TMUX was not replaced!!'
else
    ln -s ~/dotfiles/config/tmux ~/.config && echo 'TMUX directory was linked sucessfully!!' || echo 'TMUX was not linked!!'
fi

XFCE=~/.config/xfce4
if [ -d "$XFCE" ]; then
    rm -r $XFCE && ln -s ~/dotfiles/config/xfce4 ~/.config && echo 'XFCE4 directory was replaced sucessfully!!' || echo 'XFCE4 was not replaced!!'
else
    ln -s ~/dotfiles/config/xfce4 ~/.config && echo 'XFCE4 directory was linked sucessfully!!' || echo 'XFCE4 was not linked!!'
fi

REDSHIFT=~/.config/redshift.conf
if [ -f "$REDSHIFT" ]; then
    rm $REDSHIFT && ln -s ~/dotfiles/config/redshift.conf ~/.config && echo 'REDSHIFT file was replaced sucessfully!!' || echo 'REDSHIFT was not replaced!!'
else
    ln -s ~/dotfiles/config/redshift.conf ~/.config && echo 'REDSHIFT file was linked sucessfully!!' || echo 'REDSHIFT was not linked!!'
fi

STARSHIP=~/.config/starship.toml
if [ -f "$STARSHIP" ]; then
    rm $STARSHIP && ln -s ~/dotfiles/config/starship.toml ~/.config && echo 'STARSHIP file was replaced sucessfully!!' || echo 'STARSHIP was not replaced!!'
else
    ln -s ~/dotfiles/config/starship.toml ~/.config && echo 'STARSHIP file was linked sucessfully!!' || echo 'STARSHIP was not linked!!'
fi
