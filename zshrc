#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Disable <C-S> on terminal to lock scroll
stty -ixon

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs at .zsh.custom directory
if [ -d $HOME/.zsh.custom/  ]; then
  if [ "$(ls -A $HOME/.zsh.custom/)" ]; then
    for config_file ($HOME/.zsh.custom/*.zsh) source $config_file
    fi
  fi
