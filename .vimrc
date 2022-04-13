set nocompatible
set hidden
let mapleader = ","
nnoremap ; :

"" Plugins
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'arcticicestudio/nord-vim'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim' 
Plug 'dan-t/vim-lvimrc'
call plug#end()

" enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

set number " show line numbers
set showcmd " show command in bottom bar
set cursorline " highlight current line
set showmatch " highlight matching [{()}]

set scrolloff=7

" no annoying sound on errors
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" colors
set termguicolors
set t_Co=256 " Enable 256 colors palette
set background=dark
colorscheme nord
syntax on
"syntax enable

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set fileformats=unix,dos,mac

" tabs
set tabstop=4   " number of visual spaces per tab
set softtabstop=4 " number of spaces in tab when editing
set expandtab " tabs are spaces 
set shiftwidth=4 " number of spaces used for autoindenting
set shiftround " use multiple of shiftwidth when indenting
set smarttab

set backspace=indent,eol,start " allow backspacing over everything in insert mode
" indentation
set autoindent
set copyindent " copy the previous indentation on autoindenting
set smartindent

" searching
set ignorecase
set smartcase
set hlsearch
set incsearch

set showmode

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

