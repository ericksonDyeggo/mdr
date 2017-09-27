if &compatible
  set nocompatible
end

call plug#begin('~/.vim/bundle')

" Define bundles via Github repos
Plug 'powerline/powerline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'scrooloose/nerdtree' " file explorer
Plug 'ctrlpvim/ctrlp.vim' " fuzzy finder
Plug 'pbrisbin/vim-mkdir' " create folder if it doesn't exist
Plug 'scrooloose/syntastic' " syntax checking
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-rails'
Plug 'keith/rspec.vim'
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

if filereadable(expand("~/.plugins.vim.local"))
  source ~/.plugins.vim.local
endif

call plug#end()
