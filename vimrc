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

" java-lsp
if executable('java')
	au User lsp_setup call lsp#register_server({
	\ 'name': 'eclipse.jdt.ls',
    \ 'cmd': {server_info->[
    \   'java',
    \   '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    \   '-Dosgi.bundles.defaultStartLevel=4',
    \   '-Declipse.product=org.eclipse.jdt.ls.core.product',
    \   '-Dlog.level=ALL',
    \   '-noverify',
    \   '-Dfile.encording=UTF-8',
    \   '-Xmx512MB',
    \   '-jar',
    \   expand('~/eclipse_jdt/1.4.0/plugins/org.eclipse.equinox.launcher_1.6.300.v20210813-1054.jar'),
    \   '-configuration',
    \   expand('~/eclipse_jdt/1.4.0/config_linux'),
    \   '-data',
    \   getcwd()
    \ ]},
    \ 'whitelist':['java'],
    \ })
endif

" vim-plugs setup
call plug#begin()

" Plugins
Plug 'preservim/nerdtree'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

let g:asyncomplete_remove_duplicates = 1
let g:asyncomplete_smart_completion = 1
let g:asyncomplete_auto_popup = 1
Plug 'w0rp/ale'

call plug#end()

