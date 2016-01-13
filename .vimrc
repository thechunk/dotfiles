call plug#begin()

" Bundles - Language-specific
Plug 'einars/js-beautify'
Plug 'maksimr/vim-jsbeautify'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/matchit.zip'

" Bundles - Source control
Plug 'jreybert/vimagit'
Plug 'airblade/vim-gitgutter'

" Bundles - Editing
Plug 'kien/ctrlp.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'Raimondi/delimitMate'

" Bundles - Functional
Plug 'editorconfig/editorconfig-vim'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-characterize'
Plug 'vim-scripts/loremipsum'
Plug 'samsonw/vim-task'

" Bundles - UI
Plug 'bling/vim-bufferline'
Plug 'itchyny/lightline.vim'

call plug#end()

" Plugins
let g:syntastic_javascript_checkers = ['eslint', 'jshint', 'jscs']

" ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/*,*/\.git/*
let g:ctrlp_custom_ignore = 'tmp$\|\.(git|hg|svn)$\|.rvm$\|.bundle$\|.sass\-cache$\|\v[\/](bower_components|node_modules|vendor)'
let g:ctrlp_working_path_mode = 'ra'
" let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=16
" let g:ctrlp_match_window_reversed=0
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
	\},
	\'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
	\'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" }
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
" let g:tagbar_autofocus=1

" netrw
let g:netrw_localrmdir='rm -r'
let g:netrw_liststyle=1

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

scriptencoding utf-8
if has('nvim')
else
	set encoding=utf-8
endif
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
set listchars=tab:→\ ,nbsp:·,trail:␣,extends:▸,precedes:◂,eol:$

" Bindings
let mapleader=","
let g:mapleader=","
let maplocalleader=","

nnoremap <silent> <leader>/ :nohlsearch<CR>
nnoremap <silent> <leader>n gt
nnoremap <silent> <leader>p gT
nnoremap <silent> <leader>t :tabnew<CR>
nnoremap <silent> <leader>s :sp<CR>
nnoremap <silent> <leader>v :vsp<CR>
nnoremap <silent> <leader>qq :bw<CR>

noremap <silent> <C-g> :TagbarToggle<CR>
