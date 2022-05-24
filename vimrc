" basic configuration
syntax on
set number
set tabstop=4
set nrformats=
set cindent
set smartindent
set autoindent
set expandtab
set showmatch
set shiftwidth=4
set softtabstop=4
set nocompatible
set pastetoggle=<f11>
set ignorecase
set hlsearch
set incsearch
set hidden
set foldenable
set foldmethod=marker
set ambiwidth=double
set breakindent
set cmdheight=2
set nofixeol
set shellslash

" expand configuration
" NERDTree
autocmd VimEnter * NERDTree

" Plug
call plug#begin()
" Plugins
Plug 'preservim/nerdtree'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

call plug#end()

