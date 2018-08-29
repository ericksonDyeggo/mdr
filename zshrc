#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

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

# TMUX
if which tmux >/dev/null 2>&1; then
  # if no session is started, start a new session
   test -z ${TMUX} && tmux

  # when quitting tmux, try to attach
  while test -z ${TMUX}; do
    tmux attach || break
  done
fi
