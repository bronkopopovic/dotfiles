set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

set encoding=UTF-8

source ~/.config/nvim/rc/plugs.vim
source ~/.config/nvim/rc/map.vim
source ~/.config/nvim/rc/conf.vim
source ~/.config/nvim/rc/colors.vim
source ~/.config/nvim/rc/coc.vim
"source ~/.config/nvim/rc/neovim05.vim
