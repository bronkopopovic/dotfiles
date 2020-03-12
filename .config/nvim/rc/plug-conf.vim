autocmd StdinReadPre * let s:std_in=1

" highlight bracket pairs
let g:rainbow_active = 1

" hide default status line
set noshowmode

" dim inactive windows
let g:diminactive_enable_focus = 1

" dominikduda/vim_current_word
let g:vim_current_word#highlight_twins = 1
let g:vim_current_word#highlight_current_word = 1
let g:vim_current_word#highlight_delay = 500
autocmd BufAdd NERD_tree_*,your_buffer_name.rb,*.js :let b:vim_current_word_disabled_in_this_buffer = 1a

"#######################
" Nerdtree
"#######################
let g:NERDTreeWinSize=60
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeAutoDeleteBuffer = 1
map <C-n> :NERDTreeToggle<CR>
let g:ranger_replace_netrw = 1

" Save session on quitting Vim
autocmd VimLeavePre * NERDTreeClose

" Close nerdtree when its the last pane
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Check if NERDTree is open or active
function! IsNERDTreeOpen()        
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    normal zz
    wincmd p
  endif
endfunction

" Highlight currently open buffer in NERDTree
autocmd BufEnter * call SyncTree()

"#######################
" lightline
"#######################
let g:lightline                                 = {'colorscheme': 'solarized'}
let g:lightline.tabline                         = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand                = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type                  = {'buffers': 'tabsel'}
let g:lightline.component_raw                   = {'buffers': 1}
let g:lightline#bufferline#clickable            = 1
let g:lightline#bufferline#min_buffer_count     = 2
let g:lightline#bufferline#filename_modifier    = ':t'

"#######################
" VDebug
"#######################
let g:vdebug_options = {
    \    'port' : 1337,
    \    'timeout' : 20,
    \    'server' : '',
    \    'on_close' : 'stop',
    \    'break_on_open' : 1,
    \    'ide_key' : '',
    \    'debug_window_level' : 0,
    \    'debug_file_level' : 0,
    \    'debug_file' : '',
    \    'path_maps' : {},
    \    'watch_window_style' : 'expanded',
    \    'marker_default' : '⬦',
    \    'marker_closed_tree' : '▸',
    \    'marker_open_tree' : '▾',
    \    'sign_breakpoint' : '🛑',
    \    'sign_current' : '▶',
    \    'continuous_mode'  : 1,
    \    'simplified_status': 1,
    \    'layout': 'vertical',
    \}

"#######################
" Color Scheme Customizations
"#######################
function! MyHighlights() abort
    hi Pmenu guifg=#93a1a1 guibg=#001c23 guisp=NONE gui=NONE cterm=NONE
endfunction

augroup MyColors
    autocmd!
    autocmd ColorScheme * call MyHighlights()
augroup END

"#######################
" CTRL P
"#######################
map <C-b> :CtrlPBuffer<CR>
