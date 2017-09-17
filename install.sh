# !/bin/sh
if [ ! -d "$HOME/.mdr" ]; then
    echo "Installing MDR for the first time"
    git clone --depth=1 https://github.com/skwp/dotfiles.git "$HOME/.mdr"
    ln -nfs ~/.mdr/zshrc ~/.zshrc
    ln -nfs ~/.mdr/zpreztorc ~/.zpreztorc
    ln -nfs ~/.mdr/vim ~/.vim
    ln -nfs ~/.mdr/vimrc ~/.vimrc
    ln -nfs ~/.mdr/gitignore ~/.gitignore
    ln -nfs ~/.mdr/gitconfig ~/.gitconfig
else
    echo "MDR is already installed"
fi
