set nocompatible

" enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

let mapleader = ","
nmap <leader><leader> :w<cr> " fast saving

set number " show line numbers
set showcmd " show command in bottom bar
set cursorline " highlight current line
set showmatch " highlight matching [{()}]

set scrolloff=7

" no annoying sound on errors
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

set termguicolors
" Enable 256 colors palette in Gnome Terminal
set t_Co=256
set background=dark
colorscheme nord
syntax on
"syntax enable

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

"""""""""""""""
" indentation "
"""""""""""""""
set tabstop=4   " number of visual spaces per TAB
set softtabstop=4 " number of spaces in tab when editing
set expandtab " tabs are spaces 

set shiftwidth=4
set smarttab
set autoindent
set smartindent

set showmode

"" Plugins
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'arcticicestudio/nord-vim'
Plug 'preservim/nerdtree'
call plug#end()

