if &compatible
    set nocompatible
endif

let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &runtimepath !~# '/dein.vim'
    if !isdirectory(s:dein_repo_dir)
        execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
    endif
        execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)

    let g:rc_dir = expand('~/.vim/rc')
    let s:toml = g:rc_dir . '/dein.toml'

    call dein#load_toml(s:toml, {'lazy': 0})

    call dein#end()
    call dein#save_state()
endif

if dein#check_install()
    call dein#install()
endif

set nowrap

set hlsearch
set ignorecase
set smartcase

set autoindent

set ruler
set number
set wildmenu
set showcmd
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set smarttab

set clipboard=unnamed

set noswapfile

colorscheme molokai

filetype plugin indent on
syntax enable

autocmd FileType vue syntax sync fromstart
autocmd FileType html.twig.js.css setlocal sw=2 sts=2 ts=2 et
autocmd FileType html setlocal sw=2 sts=2 ts=2 et

inoremap <expr><Enter> pumvisible() ? "\<C-y>" : "\<Enter>"
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
noremap <ESC><ESC> :noh<CR>
noremap <Tab> gt
noremap <S-Tab> gT
noremap :e :tabe
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-h> <C-w>h
noremap <C-l> <C-w>l
