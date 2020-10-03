call plug#begin('~/.config/nvim/plugs')

" COLOR SCHEMES
Plug 'morhetz/gruvbox'
" Plug 'lifepillar/vim-solarized8'
" Plug 'tomasr/molokai'


" COLOR SCHEME RELATED
" Plug 'Taverius/vim-colorscheme-manager'
" Plug 'xolox/vim-colorscheme-switcher'


" NAVIGATION / SEARCH
Plug 'mhinz/vim-startify'
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }
" Plug 'hardcoreplayers/dashboard-nvim'
" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'sgur/ctrlp-extensions.vim'
" Plug 'tacahiroy/ctrlp-funky'
" Plug 'ddrscott/vim-side-search'
" Plug 'junegunn/fzf'
" Plug 'junegunn/fzf.vim'
" Plug 'jremmen/vim-ripgrep'
" Plug 'stefandtw/quickfix-reflector.vim'
" Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}


" SIDEBAR
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-icons'
Plug 'kristijanhusak/defx-git'
" Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': ':UpdateRemotePlugins'}
" Plug 'preservim/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'


" UI
" Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'

" LANGS
" Plug 'vim-scripts/SQLComplete.vim'
" Plug 'leafgarland/typescript-vim'
" Plug 'peitalin/vim-jsx-typescript'
" Plug 'jwalton512/vim-blade'
" Plug 'kchmck/vim-coffee-script'
" Plug 'nelsyeung/twig.vim'
" Plug 'chrisbra/csv.vim'
" Plug 'arzg/vim-sh'
" Plug 'vim-python/python-syntax'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'neovim/nvim-lspconfig'
" Plug 'nvim-lua/completion-nvim'

" GENERAL
Plug 'tpope/vim-fugitive' " Git integration
Plug 'airblade/vim-gitgutter' " Show per-line git status
Plug 'blueyed/vim-diminactive' " Dim inactive panes
Plug 'tpope/vim-sensible' " some common settings - search before pressing enter, autoread file changes, etc
Plug 'tmux-plugins/vim-tmux-focus-events' " send focus events to vim when switching tmux panes
Plug 'neoclide/coc.nvim', {'branch': 'release'} " autocomplete & lsp integration
Plug 'tpope/vim-commentary' " auto-comment macro
Plug 'jeffkreeftmeijer/vim-numbertoggle' " Toggles absolute line numbers on inactive panes
Plug 'editorconfig/editorconfig-vim' " Support for .editorconfig files
Plug 'cohama/lexima.vim' " Auto close brackets & paranthesis
Plug 'matze/vim-move' " Move lines & selections
" Plug 'dominikduda/vim_current_word' " highlight current word
" Plug 'tmhedberg/SimpylFold'
" Plug 'xolox/vim-misc'
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
source ~/.config/nvim/rc/plugs/treesitter.vim
"source ~/.config/nvim/rc/plugs/lsp.vim
"source ~/.config/nvim/rc/plugs/ctrlp.vim
"source ~/.config/nvim/rc/plugs/side-search.vim
"source ~/.config/nvim/rc/plugs/close-tags.vim
"source ~/.config/nvim/rc/plugs/nerd-tree.vim
"source ~/.config/nvim/rc/plugs/bookmarks.vim
"source ~/.config/nvim/rc/plugs/indent-lines.vim
