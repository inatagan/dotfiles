### my starship shell config
#eval "$(starship init bash)"

### pfetch config variables
#PF_INFO="ascii title os kernel shell uptime de pkgs memory palette"; export PF_INFO

# if tmux is executable, X is running, and not inside a tmux session, then try to attach.
# if attachment fails, start a new session
#if [ -x "$(command -v tmux)" ] && [ -n "${DISPLAY}" ]; then
#  [ -z "${TMUX}" ] && { tmux attach || tmux; } >/dev/null 2>&1
#fi

### my aliases
alias ee='tmux kill-server'
alias pfetch='pfetch | sed 's/GNU/UwU/g''
alias bot='ps -aef | grep python'
alias summonsign_db_bak='scp ina@pi0.local:/home/ina/firekeeper/summonsign.db /home/ina/workspace/firekeeper/'
alias ermod_install='~/dotfiles/scripts/er_mod_install.sh'
alias ermod_uninstall='~/dotfiles/scripts/er_mod_uninstall.sh'
alias vim='nvim'
alias vi='nvim'

# Config source definition
if [ -f ~/.bash_config ]; then
    . ~/.bash_config
fi
