" Switch between the last two files
nnoremap <Leader><Leader> <c-^>

" vim-test mappings
nnoremap <Leader>rs :TestFile<CR>
nnoremap <Leader>rn :TestNearest<CR>
nnoremap <Leader>rl ::TestLast<CR>
nnoremap <Leader>ra :TestSuite<CR>
nnoremap <Leader>rg :TestVisit<CR>

"Clear current search highlight by double tapping //
nmap <silent> // :nohlsearch<CR>

" Create window splits easier. The default
" way is Ctrl-w,v and Ctrl-w,s. I remap
" this to vv and ss 
" By skwp
nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s

" create <%= foo %> erb tags using Ctrl-k in edit mode
imap <silent> <C-K> <%=  %><Esc>2hi

" create <%= foo %> erb tags using Ctrl-j in edit mode
imap <silent> <C-J> <%  %><Esc>2hi


" Re-enable tmux_navigator.vim default bindings, minus <c-\>.
" <c-\> conflicts with NERDTree "current file".

" Don't allow any default key-mappings.
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>

" Save on Ctrl + S
" If the current buffer has never been saved, it will have no name,
" call the file browser to save it, otherwise just save it.
command -nargs=0 -bar Update if &modified
      \|    if empty(bufname('%'))
        \|        browse confirm write
        \|    else
          \|        confirm write
          \|    endif
          \|endif
nnoremap <silent> <C-S> :<C-u>Update<CR>

" vim reload
nmap <silent> <Leader>vr :so ~/.vimrc<CR>

" Type <space>hl to toggle highlighting on/off, and show current value.
noremap <Leader>hl :set hlsearch! hlsearch?<CR>

" Remapping CtrlP
" let g:ctrlp_map = ' t'
nnoremap <silent> <Leader>t :CtrlP<CR>
nnoremap <silent> <Leader>p :CtrlP<CR>
nnoremap <silent> <Leader>b :CtrlPBuffer<CR>

" zoom a vim pane, <C-w>= to re-balance
nnoremap <Leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <Leader>= :wincmd =<cr>

"" Tabs
nnoremap <S-Tab> gt
nnoremap <silent> <S-t> :tabnew<CR>

" Rubocop
map <Leader>ru :call VtrSendCommand('rubocop')<CR>
map <Leader>rfu :call VtrSendCommand('rubocop ' . expand("%"))<CR>

" Flog
map <Leader>fl :call VtrSendCommand('flog ' . expand("%"))<CR>

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>
inoremap <S-Tab> <c-n>

function! CloseNerdTree()
  if g:NERDTree.IsOpen()
    NERDTreeFind
    q
  else
    NERDTreeFind
  endif
endfunction
" ==== NERD tree
" Open the project tree and expose current file in the nerdtree with Ctrl-\
command! LocalCloseNerdTree call CloseNerdTree()
nnoremap <silent> <C-\> :LocalCloseNerdTree<cr>

" Index ctags from any project, including those outside Rails
map <Leader>ct :!ctags -R .<CR>

"grep the current word using F (mnemonic Find)
nnoremap <silent> F :Ag <cword><CR>
