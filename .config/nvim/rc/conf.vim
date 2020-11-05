filetype plugin on

colorscheme gruvbox

set mouse=a
set cursorline
set number
set numberwidth=5
set relativenumber
set clipboard=unnamed
set termguicolors
set showtabline=1
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set scrolloff=7

set nofoldenable

set list
set listchars=tab:\|\ ,space:·

set wrap
set breakindent

set background=dark

filetype plugin on

autocmd FocusLost * call feedkeys("\<esc>")
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

" hide default status line
set noshowmode

set autoread
au FocusGained,BufEnter * :checktime

" au FileType php setlocal syntax=OFF
" au FileType py setlocal syntax=OFF
" au FileType js setlocal syntax=OFF
" au FileType ts setlocal syntax=OFF
au FileType php setlocal indentexpr =
au FileType php setlocal autoindent
au FileType pgp setlocal smartindent
