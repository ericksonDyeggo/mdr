# !/bin/sh
if [ ! -d "$HOME/.mdr" ]; then
    echo "Installing MDR for the first time"
    git clone --recursive https://github.com/sorin-ionescu/prezto.git "$HOME/.zprezto"
    setopt EXTENDED_GLOB
    for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md; do
      ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
    done
    git clone --depth=1 https://github.com/ericksonDyeggo/mdr.git "$HOME/.mdr"
    ln -s ~/.mdr/zshrc ~/.zshrc
    ln -s ~/.mdr/zpreztorc ~/.zpreztorc
    ln -s ~/.mdr/vim ~/.vim
    ln -s ~/.mdr/vimrc ~/.vimrc
    ln -s ~/.mdr/gitignore ~/.gitignore
    ln -s ~/.mdr/gitconfig ~/.gitconfig
    chsh -s /bin/zsh
    vim -N "+set hidden" "+syntax on" +PlugInstall +qall
else
    echo "MDR is already installed"
fi
