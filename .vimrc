" Pathogen
execute pathogen#infect()

" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'mattn/emmet-vim'
Bundle 'tpope/vim-surround'
Bundle 'kien/ctrlp.vim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-fugitive'
"Bundle 'bling/vim-airline'
Bundle 'bling/vim-bufferline'
Bundle 'thinca/vim-localrc'
Bundle 'yegappan/grep'
Bundle 'itchyny/lightline.vim'

" General
filetype plugin indent on

set autoread
runtime macros/matchit.vim

" ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/*,*/\.git/*
let g:ctrlp_custom_ignore = 'tmp$\|\.git$\|\.hg$\|\.svn$\|.rvm$|.bundle$\|vendor'
let g:ctrlp_working_path_mode = 'ra'
"let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=16
"let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
let g:ctrlp_clear_cache_on_exit=0

" airline
let g:airline_powerline_fonts=1
let g:airline#extensions#bufferline#enabled = 0
set laststatus=2

" lightline
let g:lightline={
    \'component': {
    \    'readonly': '%{&readonly?"":""}',
    \},
    \'separator': { 'left': '', 'right': '' },
    \'subseparator': { 'left': '', 'right': '' }
\}

" bufferline
let g:bufferline_echo=1
let g:bufferline_fname_mod=':t'

" UI
set so=7
set wildmenu

set ignorecase
set smartcase
set hlsearch
set incsearch

set shortmess=aoOtI
set lazyredraw
set showmatch
set mat=2

set ruler
set relativenumber
if exists('+colorcolumn')
    set colorcolumn=80
else
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" Editor
syntax enable
colorscheme Tomorrow-Night-Bright
color Tomorrow-Night-Bright

set guifont=Source\ Code\ Pro\ for\ Powerline:h16

set encoding=utf8
set ffs=unix,dos,mac

set exrc
set secure

" Bindings
let mapleader=","
let g:mapleader=","

nnoremap <silent> <leader>/ :nohlsearch<CR>
nnoremap <silent> <leader>] gt
nnoremap <silent> <leader>[ gT
nnoremap <silent> <leader>t :tabnew<CR>
nnoremap <silent> <leader>qq :bw<CR>

if has("gui_running")
    " map each number to its shift-key character
    inoremap 1 !
    inoremap 2 @
    inoremap 3 #
    inoremap 4 $
    inoremap 5 %
    inoremap 6 ^
    inoremap 7 &
    inoremap 8 *
    inoremap 9 (
    inoremap 0 )
    "inoremap - _
    " and then the opposite
    inoremap ! 1
    inoremap @ 2
    inoremap # 3
    inoremap $ 4
    inoremap % 5
    inoremap ^ 6
    inoremap & 7
    inoremap * 8
    inoremap ( 9
    inoremap ) 0
    "inoremap _ -
else
    set t_Co=256
endif

" Indentation
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

