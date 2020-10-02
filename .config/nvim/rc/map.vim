nnoremap Q <Nop>

" SELECT ALL
map <S-a> ggVG

" Exit insert mode
inoremap jj <esc>
inoremap jk <esc>

" toggle cursor col
nmap <C-_> :set cursorcolumn!<CR>

" fzf
nnoremap <C-p> :Clap filer<CR>
nnoremap <C-b> :Clap buffers<CR>
nnoremap <C-f> :Clap grep<CR> 
nnoremap <C-c> :Clap yanks<CR>
