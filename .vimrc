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
Plugin 'fholgado/minibufexpl.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'spf13/vim-autoclose'
Plugin 'junegunn/vim-easy-align'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-powerline'
Plugin 'tpope/vim-rails'

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
set number

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

set listchars=eol:¬,trail:·,extends:#,nbsp:·

" Ctrl-s like windows
map <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>i

noremap <leader>d <Esc>:MBEbd<CR>

noremap <C-Tab> :MBEbn<CR>
noremap <C-S-Tab> :MBEbp<CR>
noremap <C-l> :MBEbn<CR>
noremap <C-h> :MBEbp<CR>

let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeHighlightCursor=1

let g:EasyMotion_keys="aoeusnth"

noremap <leader>t :NERDTreeToggle<CR>

let g:ctrlp_map = '<Leader>o'
noremap <leader>b <Esc>:CtrlPBuffer<CR>
nnoremap ; :

if has("autocmd")
    autocmd BufNewFile,BufRead *.html,*.erb set filetype=html.eruby
    autocmd BufWritePre * :%s/\s\+$//e
endif

call vundle#end()
filetype plugin indent on
