"#######################
" Color Scheme Customizations
"#######################
function! MyHighlights() abort
    " hi Pmenu guifg=#93a1a1 guibg=#001c23 guisp=NONE gui=NONE cterm=NONE
endfunction

augroup MyColors
    autocmd!
    autocmd ColorScheme * call MyHighlights()
augroup END
