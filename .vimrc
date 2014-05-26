" Pathogen
execute pathogen#infect()

" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'gmarik/Vundle.vim'

" Bundles - Language-specific
Bundle 'einars/js-beautify'
Bundle 'maksimr/vim-jsbeautify'
Bundle 'mattn/emmet-vim'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-surround'
Bundle 'vim-scripts/matchit.zip'

" Bundles - Source control
Bundle 'tpope/vim-fugitive'

" Bundles - Editing
Bundle 'kien/ctrlp.vim'
Bundle 'terryma/vim-multiple-cursors'
" Bundle 'tpope/vim-capslock'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-sleuth'
Bundle 'vim-scripts/AutoClose'

" Bundles - Functional
Bundle 'editorconfig/editorconfig-vim'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdtree'
Bundle 'thinca/vim-localrc'
Bundle 'tpope/vim-characterize'
Bundle 'tpope/vim-repeat'
Bundle 'yegappan/grep'

" Bundles - UI
Bundle 'bling/vim-bufferline'
Bundle 'itchyny/lightline.vim'

call vundle#end()

" General
filetype plugin indent on
set autoread

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

" preservenoeol
let g:PreserveNoEOL=1

" tagbar
let g:tagbar_autofocus=1

" UI
set laststatus=2

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

set guifont=M+\ 2m:h16

set encoding=utf8
set ffs=unix,dos,mac

set exrc
set secure

" Indentation
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

set autoindent
set smartindent
set wrap

" Bindings
let mapleader=","
let g:mapleader=","

nnoremap <silent> <leader>/ :nohlsearch<CR>
nnoremap <silent> <leader>n gt
nnoremap <silent> <leader>p gT
nnoremap <silent> <leader>t :tabnew<CR>
nnoremap <silent> <leader>s :sp<CR>
nnoremap <silent> <leader>v :vsp<CR>
nnoremap <silent> <leader>qq :bw<CR>

nnoremap <silent> <left> :bp<CR>
nnoremap <silent> <right> :bn<CR>

noremap <silent> <C-g> :TagbarToggle<CR>

if has("gui_running")
    let g:lightline={}

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
