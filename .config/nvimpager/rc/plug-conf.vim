autocmd StdinReadPre * let s:std_in=1

" highlight bracket pairs
let g:rainbow_active = 1

" hide default status line
set noshowmode

" dim inactive windows
let g:diminactive_enable_focus = 1

" lightline b& lightline buffers
let g:lightline                                 = {'colorscheme': 'solarized'}
let g:lightline.tabline                         = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand                = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type                  = {'buffers': 'tabsel'}
let g:lightline.component_raw                   = {'buffers': 1}
let g:lightline#bufferline#clickable            = 1
let g:lightline#bufferline#min_buffer_count     = 2

