set encoding=utf-8  "default text encoding is UTF-8
set number
" set relativenumber  "turns on relative numbering

syntax enable
set autoread " autoread when a file is changed externally
set ruler " Show row and column ruler information
set undolevels=1000	" Number of undo levels


set hlsearch  "highlight matches"
set incsearch "search as characters are entered"

" Source the vimrc file after saving it
if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
endif


"------------Mappings--------------"
let mapleader=','
let g:mapleader=','
:nmap <leader>ev :tabedit $MYVIMRC<cr>
:nmap <leader>c :q!<cr> " remap for close
:nmap <leader>w :w!<cr> " remap for save

map <leader>ss :setlocal spell!<cr> " Pressing ,ss will toggle and untoggle spell checking

nnoremap <esc> :noh<return><esc> " remove search highlight on esc
