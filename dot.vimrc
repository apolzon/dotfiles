" Notes:
" map <D-/> means command+/

let mapleader = ","
set nocompatible
set shell=/bin/sh
set novisualbell
set vb t_vb=
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=236
call pathogen#runtime_append_all_bundles()
runtime matchit.vim
colorscheme apolzon256
filetype plugin indent on
syntax on

autocmd BufWritePost *.vim colorscheme apolzon256

set guifont=monaco:h14
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
map <Leader>r :.Rake<CR>
map <Leader>a :Rake<CR>
map <D-/> <Leader>c<space>
map <C-j> <C-w>j<CR>
map <C-k> <C-w>k<CR>
map <C-h> <C-w>h<CR>
map <C-l> <C-w>l<CR>

" Never show scrollbars
set guioptions-=L
set guioptions-=r


function! CopyNoCarriage()
  let str = substitute(getreg('0'), '\n', '', 'g')
  call system("pbcopy",str)
  return str
endfunction

if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

inoremap <D-> <Esc>
vnoremap <D-> <Esc>
nnoremap <D-> <Esc>
function! OpenVTreeExplore()
  if &ft == ''
    VTreeExplore
  endif
endfunction
au BufEnter,VimEnter * call OpenVTreeExplore()
