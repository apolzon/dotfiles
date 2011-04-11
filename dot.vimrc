" Notes:
" map <D-/> means command+/

let mapleader = ","
set nocompatible
set shell=/bin/sh
let g:indent_guides_auto_color = 0
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=DarkBlue
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=DarkBlue
call pathogen#runtime_append_all_bundles()
runtime macros/matchit.vim
if has("gui_macvim")
  colorscheme bespin
else
  colorscheme vibrantink
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
set foldlevel=99
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
au BufRead,BufNewFile {Gemfile,Rakefile,Thorfile,config.ru,*.thor} set ft=ruby

let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1

map <Leader>c :call system("pbcopy", getreg('""'))<CR>
map <D-c> yy:call CopyNoCarriage()<CR>
map <Leader>r :execute '!rspec %' . ' --line_number ' . line('.')<CR>
map <D-/> <Leader>c<space>
map <C-j> <C-w>j<CR>
map <C-k> <C-w>k<CR>
map <C-h> <C-w>h<CR>
map <C-l> <C-w>l<CR>


function! CopyNoCarriage()
  let str = substitute(getreg('0'), '\n', '', 'g')
  call system("pbcopy",str)
  return str
endfunction

if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
