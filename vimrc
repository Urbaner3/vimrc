

syntax on " hightlight syntax


" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.

inoremap jk <ESC>

map <CL> : <Ctrl> 
let mapleader="'"

" }}}

" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}



" PLUGINS ---------------------------------------------------------------- {{{

" Plugin code goes here.

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim


call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')


" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'mileszs/ack.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdcommenter'

"" Plugins will be downloaded under the specified directory.
"call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
"
"" Declare the list of plugins.
"Plug 'tpope/vim-sensible'
"Plug 'junegunn/seoul256.vim'
"Plug 'scrooloose/nerdtree'
"Plug 'yegappan/taglist'
"Plug 'garbas/vim-snipmate'
"Plug 'scrooloose/nerdtree'
"Plug 'Shougo/neocomplcache/tree/master'
"Plug 'kana/vim-fakeclip'
"Plug 'tpope/vim-surround'
"Plug 'c9s/gsession.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" }}}

" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.

set number " show line numbers
set noswapfile " disable the swapfile
set hlsearch " highlight all results
set ignorecase " ignore case in search
set incsearch "show search results as you type
set background=dark
set cursorline
set enc=utf8
set hls
map <F4> : set nu!<BAR>set nonu?<CR>
" set relativenumber
set ic
set expandtab
set tabstop=4
set shiftwidth=4
set nobackup
set scrolloff=10
set wildmenu " Enable auto completion menu after pressing TAB.
set wildmode=list:longest " Make wildmenu behave like similar to Bash completion.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx


" Disable compatibility with vi which can cause unexpected issues.
set nocompatible              " be iMproved, required
" Enable type file detection. Vim will be able to try to detect the type of file in use.
"
" filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on
filetype off                  " required

" }}}
