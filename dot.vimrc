" Notes:
" map <D-/> means command+/

let mapleader = ","
set nocompatible
set shell=/bin/sh
call pathogen#runtime_append_all_bundles()
runtime macros/matchit.vim
if has("gui_macvim")
  colorscheme bespin
else
  colorscheme jellybeans
endif
filetype plugin indent on
syntax on

set backspace=indent,eol,start " backspace over everything
set ruler
set showcmd
set showmatch
set nowrap
set number
set hlsearch
set ignorecase smartcase
"set laststatus=2 always show status line
set nobackup
set noswapfile
set foldlevel=2
set foldmethod=indent
set foldenable
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
highlight ExtraWhiteSpace ctermbg=white guibg=white
match ExtraWhiteSpace /\s\+$/
set wildignore +=.git,vendor,*.swp,*~

" Add some file types to Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Thorfile,config.ru} set ft=ruby

let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1

map <Leader>c :call system("pbcopy", getreg('""'))<CR>
map <D-c> yy:call CopyNoCarriage()<CR>
map <Leader>r :execute '!rspec %' . ' --line_number ' . line('.')<CR>
map <D-/> <Leader>c<space>

function! CopyNoCarriage()
  let str = substitute(getreg('0'), '\n', '', 'g')
  call system("pbcopy",str)
  return str
endfunction

if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
