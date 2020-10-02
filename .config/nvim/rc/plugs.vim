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
" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'sgur/ctrlp-extensions.vim'
" Plug 'tacahiroy/ctrlp-funky'
" Plug 'ddrscott/vim-side-search'
" Plug 'junegunn/fzf'
" Plug 'junegunn/fzf.vim'
" Plug 'jremmen/vim-ripgrep'
" Plug 'stefandtw/quickfix-reflector.vim'
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }


" SIDEBAR
" Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': ':UpdateRemotePlugins'}
 Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
 Plug 'kristijanhusak/defx-icons'
 Plug 'kristijanhusak/defx-git'
" Plug 'preservim/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'


" UI
" Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'

" LANGS
Plug 'vim-scripts/SQLComplete.vim'
Plug 'leafgarland/typescript-vim'
Plug 'jwalton512/vim-blade'
Plug 'kchmck/vim-coffee-script'
Plug 'nelsyeung/twig.vim'
Plug 'chrisbra/csv.vim'
Plug 'arzg/vim-sh'
Plug 'vim-python/python-syntax'
Plug 'tmhedberg/SimpylFold'

" GENERAL
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'blueyed/vim-diminactive'
Plug 'xolox/vim-misc'
Plug 'tpope/vim-sensible'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'dominikduda/vim_current_word'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-commentary'
Plug 'peitalin/vim-jsx-typescript'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'editorconfig/editorconfig-vim'
Plug 'cohama/lexima.vim'
Plug 'matze/vim-move'
" Plug 'mtth/cursorcross.vim'
" Plug 'rstacruz/vim-closer'
" Plug 'jiangmiao/auto-pairs'
" Plug 'rbgrouleff/bclose.vim'
" Plug 'Townk/vim-autoclose'
" Plug 'alvan/vim-closetag'
" Plug 'MattesGroeger/vim-bookmarks'
" Plug 'nathanaelkane/vim-indent-guides'
" Plug 'honza/vim-snippets'
" Plug 'SirVer/ultisnips'
" Plug 'vim-vdebug/vdebug'
" Plug 'francoiscabrol/ranger.vim'
" Plug 'vim-scripts/Rainbow-Parenthesis'
" Plug 'majutsushi/tagbar'

call plug#end()


" PLUG CONFIGS
autocmd StdinReadPre * let s:std_in=1

source ~/.config/nvim/rc/plugs/editorconfig.vim
source ~/.config/nvim/rc/plugs/vim-clap.vim
source ~/.config/nvim/rc/plugs/defx.vim
source ~/.config/nvim/rc/plugs/lexima.vim
source ~/.config/nvim/rc/plugs/current-word.vim
source ~/.config/nvim/rc/plugs/vim-move.vim
source ~/.config/nvim/rc/plugs/python.vim
source ~/.config/nvim/rc/plugs/diminactive.vim
"source ~/.config/nvim/rc/plugs/ctrlp.vim
"source ~/.config/nvim/rc/plugs/side-search.vim
"source ~/.config/nvim/rc/plugs/close-tags.vim
"source ~/.config/nvim/rc/plugs/nerd-tree.vim
"source ~/.config/nvim/rc/plugs/bookmarks.vim
"source ~/.config/nvim/rc/plugs/indent-lines.vim
