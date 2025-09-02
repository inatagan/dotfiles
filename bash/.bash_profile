# .bash_profile -*- mode: sh -*-

# Load login settings and environment variables
if [[ -f ~/.profile ]]; then
  source ~/.profile
fi

# Load interactive settings
if [[ -f ~/.bashrc ]]; then
  source ~/.bashrc
fi

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[ -f /home/ina/.dart-cli-completion/bash-config.bash ] && . /home/ina/.dart-cli-completion/bash-config.bash || true
## [/Completion]

