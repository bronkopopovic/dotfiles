autocmd StdinReadPre * let s:std_in=1

" python
let g:python_highlight_all = 1

" highlight bracket pairs
let g:rainbow_active = 1

" vim-move
let g:move_key_modifier = 'C'

" dim inactive windows
let g:diminactive_enable_focus = 1

" dominikduda/vim_current_word
let g:vim_current_word#highlight_twins = 1
let g:vim_current_word#highlight_current_word = 1
let g:vim_current_word#highlight_delay = 500
" autocmd BufAdd NERD_tree_*,your_buffer_name.rb,*.js :let b:vim_current_word_disabled_in_this_buffer = 1a

"#######################
" Lexima (autoclose)
"#######################
let g:lexima_enable_newline_rules = 0
let g:lexima_enable_endwise_rules = 0

" Chadtree
" nnoremap <C-n>CHADopen<CR>
" lua vim.api.nvim_set_var("chadtree_settings", { use_icons = "emoji" })

"#######################
" DEFX
"#######################
nnoremap <C-n> :Defx<CR>

autocmd FileType defx call s:defx_my_settings()
function! s:defx_my_settings() abort
  " Define mappings
  nnoremap <silent><buffer><expr> <CR> defx#do_action('drop')
  nnoremap <silent><buffer><expr> c
  \ defx#do_action('copy')
  nnoremap <silent><buffer><expr> m
  \ defx#do_action('move')
  nnoremap <silent><buffer><expr> p
  \ defx#do_action('paste')
  " nnoremap <silent><buffer><expr> l
  " \ defx#do_action('open')
  nnoremap <silent><buffer><expr> E
  \ defx#do_action('open', 'vsplit')
  nnoremap <silent><buffer><expr> P
  \ defx#do_action('open', 'pedit')
  nnoremap <silent><buffer><expr> l
  \ defx#do_action('open_or_close_tree')
  nnoremap <silent><buffer><expr> K
  \ defx#do_action('new_directory')
  nnoremap <silent><buffer><expr> N
  \ defx#do_action('new_file')
  nnoremap <silent><buffer><expr> M
  \ defx#do_action('new_multiple_files')
  nnoremap <silent><buffer><expr> C
  \ defx#do_action('toggle_columns',
  \                'mark:indent:icon:filename:type:size:time')
  nnoremap <silent><buffer><expr> S
  \ defx#do_action('toggle_sort', 'name')
  nnoremap <silent><buffer><expr> d
  \ defx#do_action('remove')
  nnoremap <silent><buffer><expr> r
  \ defx#do_action('rename')
  nnoremap <silent><buffer><expr> !
  \ defx#do_action('execute_command')
  nnoremap <silent><buffer><expr> x
  \ defx#do_action('execute_system')
  nnoremap <silent><buffer><expr> yy
  \ defx#do_action('yank_path')
  nnoremap <silent><buffer><expr> .
  \ defx#do_action('toggle_ignored_files')
  nnoremap <silent><buffer><expr> ;
  \ defx#do_action('repeat')
  nnoremap <silent><buffer><expr> u
  \ defx#do_action('cd', ['..'])
  nnoremap <silent><buffer><expr> ~
  \ defx#do_action('cd')
  nnoremap <silent><buffer><expr> q
  \ defx#do_action('quit')
  nnoremap <silent><buffer><expr> <Space>
  \ defx#do_action('toggle_select') . 'j'
  nnoremap <silent><buffer><expr> *
  \ defx#do_action('toggle_select_all')
  nnoremap <silent><buffer><expr> j
  \ line('.') == line('$') ? 'gg' : 'j'
  nnoremap <silent><buffer><expr> k
  \ line('.') == 1 ? 'G' : 'k'
  nnoremap <silent><buffer><expr> <C-l>
  \ defx#do_action('redraw')
  nnoremap <silent><buffer><expr> <C-g>
  \ defx#do_action('print')
  nnoremap <silent><buffer><expr> cd
  \ defx#do_action('change_vim_cwd')
endfunction

" Set appearance
call defx#custom#column('git', 'indicators', {
      \ 'Modified'  : '✹',
      \ 'Staged'    : '✚',
      \ 'Untracked' : '✭',
      \ 'Renamed'   : '➜',
      \ 'Unmerged'  : '═',
      \ 'Ignored'   : '☒',
      \ 'Deleted'   : '✖',
      \ 'Unknown'   : '?'
      \ })
call defx#custom#option('_', {
      \ 'winwidth': 60,
      \ 'split': 'vertical',
      \ 'direction': 'topleft',
      \ 'show_ignored_files': 1,
      \ 'buffer_name': 'defxplorer',
      \ 'toggle': 1,      
      \ 'columns': 'git:indent:icons:filename',
      \ 'resume': 1,
      \ })
call defx#custom#column('filename', {
      \ 'max_width' : '2000'
      \ })

"#######################
" Airline
"#######################
" let g:airline_theme='dark'

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
    " hi Pmenu guifg=#93a1a1 guibg=#001c23 guisp=NONE gui=NONE cterm=NONE
endfunction

augroup MyColors
    autocmd!
    autocmd ColorScheme * call MyHighlights()
augroup END


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
  exec "bd" bufn ==# "" ? path : bufn
  exec "norm \<F5>"
endfunction


"#######################
" Side search
"#######################
" How should we execute the search?
" --heading and --stats are required!
let g:side_search_prg = 'ag --word-regexp'
  \. " --ignore='*.js.map'"
  \. " --heading --stats -B 1 -A 4"

" Can use `vnew` or `new`
let g:side_search_splitter = 'vnew'
" I like 40% splits, change it if you don't
let g:side_search_split_pct = 0.4
" SideSearch current word and return to original window
nnoremap <Leader>ss :SideSearch <C-r><C-w><CR> | wincmd p
" Create an shorter `SS` command
command! -complete=file -nargs=+ SS execute 'SideSearch <args>'


"#######################
" X/HTML CLOSE TAGS
"#######################
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.twig'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_filetypes = 'html,xhtml,phtml,twig'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'

"#######################
" .editorconfig file
"#######################
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

"#######################
" Bookmarks
"#######################
" let g:bookmark_sign = '♥'
" let g:bookmark_highlight_lines = 1


"#######################
" Nerdtree
"#######################
" let g:NERDTreeWinSize=60
" let NERDTreeMinimalUI = 1
" let NERDTreeDirArrows = 1
" let NERDTreeAutoDeleteBuffer = 1
" map <C-n> :NERDTreeToggle<CR>
" let g:ranger_replace_netrw = 1
" let NERDTreeShowHidden=1

" " Save session on quitting Vim
" autocmd VimLeavePre * NERDTreeClose

" " Close nerdtree when its the last pane
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" " Check if NERDTree is open or active
" function! IsNERDTreeOpen()        
"   return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
" endfunction

" " Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" " file, and we're not in vimdiff
" function! SyncTree()
"   if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
"     NERDTreeFind
"     normal zz
"     wincmd p
"   endif
" endfunction

" Highlight currently open buffer in NERDTree
" autocmd BufEnter * call SyncTree()


"#######################
" INDENT LINES
"#######################
"let g:indent_guides_auto_colors = 0
"let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_guide_size = 1

