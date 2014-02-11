set nocompatible
set encoding=utf-8

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
Bundle 'kien/ctrlp.vim'
Bundle 'chriskempson/base16-vim'

filetype plugin indent on
syntax on
set background=dark
set term=xterm-256color
colorscheme base16-default 

" Editor config
set backspace=2
set colorcolumn=80
set hidden
set laststatus=2
set lazyredraw
set mouse=a
set noerrorbells
set noshowmode
set relativenumber
set showmatch
set title
set ttimeoutlen=0

" Text properties
set autoindent
set expandtab
set shiftwidth=2
set smarttab
set softtabstop=2
set tabstop=2

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase

" Key maps
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

" Relative in normal, number in insert
:au FocusLost * :set number
:au FocusGained * :set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
