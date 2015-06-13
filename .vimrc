" Pathogen
execute pathogen#infect()

" Vundle
set nocompatible			" be iMproved, required
filetype off				" required

" set the runtime path to include Vundle and initialize
if has("win32")
	set rtp+=~/vimfiles/bundle/Vundle.vim
	let path='~/vimfiles/bundle'
	call vundle#begin(path)
else
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()
endif

Bundle 'gmarik/Vundle.vim'

" Bundles - Language-specific
Bundle 'einars/js-beautify'
Bundle 'maksimr/vim-jsbeautify'
Bundle 'mattn/emmet-vim'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-surround'
Bundle 'vim-scripts/matchit.zip'
Bundle 'kchmck/vim-coffee-script'
Bundle 'lukaszkorecki/CoffeeTags'
Bundle 'burnettk/vim-angular'

" Bundles - Source control
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'

" Bundles - Editing
Bundle 'kien/ctrlp.vim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-sleuth'
Bundle 'Townk/vim-autoclose'

" Bundles - Functional
Bundle 'editorconfig/editorconfig-vim'
Bundle 'majutsushi/tagbar'
Bundle 'thinca/vim-localrc'
Bundle 'tpope/vim-characterize'
Bundle 'tpope/vim-repeat'
Bundle 'yegappan/grep'
Bundle 'vim-scripts/loremipsum'
Bundle 'tpope/vim-vinegar'

" Bundles - UI
Bundle 'bling/vim-bufferline'
Bundle 'itchyny/lightline.vim'

call vundle#end()

" Plugins
" ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/*,*/\.git/*
let g:ctrlp_custom_ignore = 'tmp$\|\.(git|hg|svn)$\|.rvm$\|.bundle$\|.sass\-cache$\|\v[\/](bower_components|node_modules|vendor)'
let g:ctrlp_working_path_mode = 'ra'
"let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=16
"let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
let g:ctrlp_clear_cache_on_exit=0

" lightline
let g:lightline={
	\'active': {
	\	'left': [
	\		['mode', 'paste'],
	\		[ 'fugitive', 'readonly', 'filename', 'modified' ]
	\	]
	\},
	\'component_function': {
	\	'readonly': 'MyReadonly',
	\	'fugitive': 'MyFugitive'
	\}
\}
function! MyReadonly()
	if &filetype == "help"
		return ""
	elseif &readonly
		return "ro"
	else
		return ""
	endif
endfunction
function! MyFugitive()
	if exists("*fugitive#head")
		let _ = fugitive#head()
		return strlen(_) ? _ : ''
	endif
	return ''
endfunction

" bufferline
let g:bufferline_echo=1
let g:bufferline_fname_mod=':t'

" preservenoeol
let g:PreserveNoEOL=1

" tagbar
let g:tagbar_autofocus=1

" netrw
let g:netrw_localrmdir='rm -r'

" General
filetype plugin indent on
set autoread
set t_Co=256

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
if exists("+colorcolumn")
	set colorcolumn=80
else
	au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" Editor
syntax enable
colorscheme Tomorrow
color Tomorrow

set guifont=M+_2m_regular:h14

set encoding=utf8
set ffs=unix,dos,mac

set exrc
set secure

set clipboard=unnamed

" Indentation
set smarttab
set shiftwidth=4
set tabstop=4

set autoindent
set smartindent
set wrap

set list
set listchars=tab:⇥\ ,nbsp:·,trail:␣,extends:▸,precedes:◂,eol:$

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
