let g:tabnames = ['none']

au TabNew * call NewTab()

function! NewTab() abort
  call add(g:tabnames, 'none')
endfunction

function! TabName(name) abort
  let index = tabpagenr() - 1
  let g:tabnames[index] = a:name
  call lightline#toggle()
  call lightline#toggle()
endfunction

function! LightlineTabname(n) abort
  let index = a:n - 1
  if g:tabnames[index] == 'none'
    let bufnr = tabpagebuflist(a:n)[tabpagewinnr(a:n) - 1]
    let fname = expand('#' . bufnr . ':t')
    return fname =~ '__Tagbar__' ? 'Tagbar' :
      \ fname =~ 'NERD_tree' ? 'NERDTree' : 
      \ ('' != fname ? fname : '[No Name]')
  else
    return g:tabnames[index]
  endif
endfunction

let g:lightline = {
  \ 'colorscheme': 'gruvbox',
  \ 'tab_component_function': {
  \   'name': 'LightlineTabname',
  \ }
\ }

let g:lightline.tab = {
  \ 'active': [ 'name' ],
  \ 'inactive': [ 'name' ] }
