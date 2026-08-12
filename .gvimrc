"========================
" My .gvimrc Version 1.1
"========================

" Basic
set number
set relativenumber
set cmdheight=2

" Indent
set expandtab
set tabstop=2
set shiftwidth=2

" Window size
set lines=24
set columns=132

" Disable menu bar and tool bar
set guioptions-=m
set guioptions-=T

" Font
set guifont=CommitMono\_Nerd\_Font:h12
syntax on
colorscheme darkblue

" Sync anonymous register and clipboard
set clipboard=unnamed,unnamedplus

" Ctrl+V to paste on Insert mode
inoremap <C-v> <C-r>+

" Input method
inoremap <Esc> <C-o>:silent set iminsert=0<CR><Esc>

" Disable backup file and undo file
set nobackup
set noundofile
