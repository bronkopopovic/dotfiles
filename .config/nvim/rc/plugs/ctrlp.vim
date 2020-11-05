"#######################
" CTRL P
"#######################
map <C-b> :CtrlPBuffer<CR>
map <C-c> :CtrlPYankring<CR>
map <C-x> :CtrlPFunky<CR>
let g:ctrlp_show_hidden = 1
let g:ctrlp_yankring_limit = 100
let g:ctrlp_yankring_minimum_chars = 2

let g:ctrlp_buffer_func = { 'enter': 'CtrlPMappings' }

function! CtrlPMappings()
  nnoremap <buffer> <silent> <C-q> :call <sid>DeleteBuffer()<cr>
endfunction

function! s:DeleteBuffer()
  let path = fnamemodify(getline('.')[2:], ':p')
  let bufn = matchstr(path, '\v\d+\ze\*No Name')
  exec 'bd' bufn ==# '' ? path : bufn
  exec 'norm \<F5>'
endfunction
