if &compatible
  set nocompatible
end

call plug#begin('~/.vim/bundle')

" Define bundles via Github repos
Plug 'powerline/powerline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'scrooloose/nerdtree' " file explorer
Plug 'Xuyuanp/nerdtree-git-plugin' " Git plugin for NerdTree
Plug 'ctrlpvim/ctrlp.vim' " fuzzy finder
Plug 'pbrisbin/vim-mkdir' " create folder if it doesn't exist
Plug 'scrooloose/syntastic' " syntax checking
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/tComment'
Plug 'chrisbra/color_highlight'
Plug 'jby/tmux.vim' " tmux syntax
Plug 'itchyny/lightline.vim' " pretty status bar
Plug 'christoomey/vim-tmux-runner'
Plug 'rking/ag.vim'
Plug 'godlygeek/tabular'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-repeat'
Plug 'elixir-editors/vim-elixir'
Plug 'janko-m/vim-test'
Plug 'carlosgaldino/elixir-snippets'
Plug 'posva/vim-vue'
Plug 'Quramy/tsuquyomi-vue'
Plug 'slashmili/alchemist.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'tpope/vim-classpath'
Plug 'tpope/vim-fireplace'
Plug 'venantius/vim-eastwood'
Plug 'venantius/vim-cljfmt'

if filereadable(expand("~/.plugins.vim.local"))
  source ~/.plugins.vim.local
endif

call plug#end()
