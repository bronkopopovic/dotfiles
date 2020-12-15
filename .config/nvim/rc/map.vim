nnoremap Q m<Nop>
nnoremap <C-x> :noh<CR>

" SELECT ALL
map <S-a> ggVG

" Exit insert mode
inoremap jj <esc>
inoremap jk <esc>

" toggle cursor col
nmap <C-_> :set cursorcolumn!<CR>

" fzf
nnoremap <C-p> :Clap files<CR>
nnoremap <C-b> :Clap buffers<CR>
nnoremap <C-f> :Clap grep<CR> 
nnoremap <C-c> :Clap yanks<CR>
nnoremap <C-g> :Clap git_diff_files<CR>
nnoremap <C-m> :Clap mrufiles<CR>

" Floating Terminal
map <C-t> :FloatermToggle<CR>
tnoremap <C-n> <C-\><C-n>
tnoremap <C-t> <C-\><C-n> :FloatermToggle<CR>

" quickfix selection via enter
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>
