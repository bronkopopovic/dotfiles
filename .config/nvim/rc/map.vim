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
nnoremap <C-g> :Clap git_diff_files<CR>

" Floating Terminal
map <C-t> :FloatermToggle<CR>
tnoremap <C-t> <C-\><C-n> :FloatermToggle<CR>
tnoremap <C-w>N <C-\><C-n> :FloatermNext<CR>
