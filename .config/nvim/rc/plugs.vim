call plug#begin('~/.config/nvim/plugs')

" COLOR SCHEMES
Plug 'lifepillar/vim-solarized8'
Plug 'morhetz/gruvbox'
" Plug 'tomasr/molokai'


" COLOR SCHEME RELATED
Plug 'Taverius/vim-colorscheme-manager'
Plug 'xolox/vim-colorscheme-switcher'


" NAVIGATION / SEARCH
Plug 'mhinz/vim-startify'
Plug 'kien/ctrlp.vim'
Plug 'ddrscott/vim-side-search'


" SIDEBAR
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-icons'
Plug 'kristijanhusak/defx-git'
" Plug 'preservim/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'


" UI
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'


" GENERAL
Plug 'rbgrouleff/bclose.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/Rainbow-Parenthesis'
Plug 'majutsushi/tagbar'
Plug 'blueyed/vim-diminactive'
Plug 'xolox/vim-misc'
Plug 'francoiscabrol/ranger.vim'
Plug 'tpope/vim-sensible'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'dominikduda/vim_current_word'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Townk/vim-autoclose'
Plug 'vim-vdebug/vdebug'
Plug 'vim-scripts/SQLComplete.vim'
Plug 'tpope/vim-commentary'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'alvan/vim-closetag'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'editorconfig/editorconfig-vim'
" Plug 'MattesGroeger/vim-bookmarks'
" Plug 'nathanaelkane/vim-indent-guides'
" Plug 'honza/vim-snippets'
" Plug 'SirVer/ultisnips'

call plug#end()
