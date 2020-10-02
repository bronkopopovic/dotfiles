" Vim-Clap Theme
let s:save_cpo = &cpoptions
set cpoptions&vim
let s:palette = {}

" main bg
let s:palette.display = { 'ctermbg': '235', 'guibg': '#232323' }
" Let ClapInput, ClapSpinner and ClapSearchText use the same backgound.

" cmd line
let s:bg0 = { 'ctermbg': '60', 'guibg': '#504945' }
let s:palette.input = s:bg0
let s:palette.spinner = extend({ 'ctermfg': '11', 'guifg':'#ffe500', 'cterm': 'bold', 'gui': 'bold'}, s:bg0)
let s:palette.search_text = extend({ 'ctermfg': '195', 'guifg': '#CADFF3', 'cterm': 'bold', 'gui': 'bold' }, s:bg0)

" preview bg
let s:palette.preview = { 'ctermbg': '238', 'guibg': '#1d2021' }

" 
let s:palette.selected = { 'ctermfg': '81', 'guifg': '#5FD7d7', 'cterm': 'bold,underline', 'gui': 'bold,underline' }

let s:palette.current_selection = { 'ctermbg': '236', 'guibg': '#3c3836', 'cterm': 'bold', 'gui': 'bold' }
let s:palette.selected_sign = { 'ctermfg': '196', 'guifg': '#f2241f' }
let s:palette.current_selection_sign = s:palette.selected_sign
let g:clap#themes#gruvbox_dark#palette = s:palette
let &cpoptions = s:save_cpo
unlet s:save_cpo

" Vim-Clap
let g:clap_layout = { 'relative': 'editor', 'width': '67%', 'height': '50%', 'row': '10%', 'col': '17%' }
let g:clap_theme = 'gruvbox_dark'
let g:clap_preview_size = 16
