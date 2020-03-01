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

filetype plugin indent on
syntax enable

if dein#check_install()
    call dein#install()
endif

autocmd FileType vue syntax sync fromstart

	
""NeoBundle Scripts-----------------------------
"
"" Required:
"set runtimepath^=~/.vim/bundle/neobundle.vim/
"
"" Required:
"call neobundle#begin(expand('~/.vim/bundle'))
"
"" Let NeoBundle manage NeoBundle
"" Required:
"NeoBundleFetch 'Shougo/neobundle.vim'
"
"" Add or remove your Bundles here:
""  NeoBundle 'Shougo/neosnippet.vim'
""  NeoBundle 'Shougo/neosnippet-snippets'
""  NeoBundle 'tpope/vim-fugitive'
""  NeoBundle 'ctrlpvim/ctrlp.vim'
""  NeoBundle 'flazz/vim-colorschemes'
""
""
"" vim-scripts リポジトリ
"NeoBundle 'bling/vim-airline'
"NeoBundle 'ctrlp.vim'
""NeoBundleLazy 'Shougo/neocomplecache'
"NeoBundle 'Shougo/neocomplete'
"NeoBundleLazy 'Shougo/neosnippet', {
"            \ 'depends' : 'Shougo/neosnippet-snippets',
"            \ 'autoload' : {
"            \   'insert' : 1,
"            \   'filetypes' : 'snippet',
"            \ }}
"NeoBundle 'Shougo/neosnippet-snippets'
"NeoBundle 'Shougo/unite.vim'
"NeoBundle 'The-NERD-Commenter'
"NeoBundle 'tpope/vim-surround'
"NeoBundle 'jQuery'
"NeoBundle 'pangloss/vim-javascript'
"NeoBundle 'Townk/vim-autoclose'
"NeoBundle 'molokai'
"NeoBundle 'naberon/vim-cakehtml'
"NeoBundle 'thinca/vim-quickrun'
"NeoBundle 'thinca/vim-qfreplace'
"NeoBundle 'takahirojin/gbr.vim'
"NeoBundle 'rking/ag.vim'
"NeoBundle 'Shougo/vimproc', {
"            \ 'build' : {
"            \     'windows' : 'make -f make_mingw32.mak',
"            \     'cygwin' : 'make -f make_cygwin.mak',
"            \     'mac' : 'make -f make_mac.mak',
"            \     'unix' : 'make -f make_unix.mak',
"            \    },
"            \ }
"NeoBundle 'tpope/vim-fugitive'
"NeoBundle 'camelcasemotion'
"NeoBundle 'amiorin/ctrlp-z'
"NeoBundle 'mattn/emmet-vim'
"NeoBundle 'hail2u/vim-css3-syntax'
""  NeoBundle 'taichouchou2/html5.vim'
"NeoBundle 'kchmck/vim-coffee-script'
"
"" You can specify revision/branch/tag.
""  NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
"
"" Required:
"call neobundle#end()
"
"" Required:
"filetype plugin indent on
"
"" If there are uninstalled bundles found on startup,
"" this will conveniently prompt you to install them.
"NeoBundleCheck
""End NeoBundle Scripts-------------------------
""

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

inoremap <expr><Enter> pumvisible() ? "\<C-y>" : "\<Enter>"
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
noremap <ESC><ESC> :noh<CR>
noremap <Tab> gt
noremap <S-Tab> gT
noremap :e :tabe
