set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-powerline'
Plugin 'tpope/vim-endwise'
Plugin 'spf13/vim-autoclose'


let mapleader = "-"

syntax on
set hidden
set history=1000
set undolevels=1000

set shiftround
set backspace=indent,eol,start
set smarttab
set autoindent
set copyindent
set wrap

set nobackup
set noswapfile

set directory=~/.vim/.tmp,~/tmp,/tmp

set wildmenu
set wildmode=list:full
set wildignore=*.swp,*.bak,*.pyc,*.class
set title
set showmode
set showcmd

nnoremap / /\v
vnoremap / /\v

set showmatch
set ignorecase
set smartcase
set gdefault
set incsearch
set hlsearch

set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set smartcase
set expandtab
nnoremap <leader><space> :nohl<CR>

set listchars=tab:▸\ ,eol:¬,trail:·,extends:#,nbsp:·

" Ctrl-s like windows
map <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>i

let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeHighlightCursor=1

noremap <leader>t :NERDTreeToggle<CR>

let g:ctrlp_map = '<Leader>o'
noremap <leader>b <Esc>:CtrlPBuffer<CR>
nnoremap ; :

if has("autocmd")
    autocmd BufNewFile,BufRead *.html,*.erb set filetype=html.eruby
endif

call vundle#end()
filetype plugin indent on
