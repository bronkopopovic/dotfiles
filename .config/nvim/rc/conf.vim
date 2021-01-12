filetype plugin on

colorscheme gruvbox
let g:gruvbox_invert_selection=0

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

" visible space and tab characters
set list
set listchars=tab:\|\ ,space:·

" Wrap lines and keep indentation
set wrap
set breakindent

set background=dark

" Hit ESC key, when window focus is lost
autocmd FocusLost * call feedkeys("\<esc>")

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

" Persistend Undo
set undofile
set undodir=~/.dotfiles/.undodir

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
