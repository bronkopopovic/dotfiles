filetype plugin on

syntax on

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

set background=dark

filetype plugin on

autocmd FocusLost * call feedkeys("\<esc>")
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
