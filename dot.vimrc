let mapleader = ","
set nocompatible
set shell=/bin/sh
call pathogen#runtime_append_all_bundles()
runtime macros/matchit.vim
colorscheme bespin
filetype plugin indent on
syntax on

set backspace=indent,eol,start " backspace over everything
set ruler
set showcmd
set showmatch
set nowrap
set number
set ignorecase smartcase
"set laststatus=2 always show status line
set nobackup
set noswapfile
set foldlevel=2
set foldmethod=indent
set foldenable
highlight ExtraWhiteSpace ctermbg=white guibg=white
match ExtraWhiteSpace /\s\+$/
