# !/bin/sh
if [ ! -d "$HOME/.mdr" ]; then
    echo "Installing MDR for the first time"
    git clone --recursive https://github.com/sorin-ionescu/prezto.git "$HOME/.zprezto"
    setopt EXTENDED_GLOB
    for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
      ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
    done
    git clone --depth=1 https://github.com/skwp/dotfiles.git "$HOME/.mdr"
    ln -nfs ~/.mdr/zshrc ~/.zshrc
    ln -nfs ~/.mdr/zpreztorc ~/.zpreztorc
    ln -nfs ~/.mdr/vim ~/.vim
    ln -nfs ~/.mdr/vimrc ~/.vimrc
    ln -nfs ~/.mdr/gitignore ~/.gitignore
    ln -nfs ~/.mdr/gitconfig ~/.gitconfig
    chsh -s /bin/zsh
else
    echo "MDR is already installed"
fi
