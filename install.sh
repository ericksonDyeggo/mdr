# !/bin/sh
if [ ! -d "$HOME/.mdr" ]; then
    echo "Installing MDR for the first time"
    git clone --recursive https://github.com/sorin-ionescu/prezto.git "$HOME/.zprezto"
    git clone --depth=1 https://github.com/ericksonDyeggo/mdr.git "$HOME/.mdr"
    ln -fs ~/.mdr/zshrc ~/.zshrc
    ln -fs ~/.mdr/zpreztorc ~/.zpreztorc
    ln -fs ~/.mdr/vim ~/.vim
    ln -fs ~/.mdr/vimrc ~/.vimrc
    ln -fs ~/.mdr/gitignore ~/.gitignore
    ln -fs ~/.mdr/gitconfig ~/.gitconfig
    ln -fs ~/.mdr/tmux.conf ~/.tmux.conf
    chsh -s /bin/zsh
    vim -N "+set hidden" "+syntax on" +PlugInstall +qall
else
    echo "MDR is already installed"
fi
