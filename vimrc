syntax on
set background=dark
set cursorline
set enc=utf8
set hls
set number
map <F4> : set nu!<BAR>set nonu?<CR>
" set relativenumber
set ic
set expandtab
set tabstop=4
set shiftwidth=2

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

"" List ends here. Plugins become visible to Vim after this call.
"call plug#end()

set nocompatible              " be iMproved, required
filetype off                  " required

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
