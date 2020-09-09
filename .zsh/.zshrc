if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export TERM="xterm-256color"

export ZSH=/Users/benutzer/.oh-my-zsh

source ~/.secrets

MAILCHECK=0

ZSH_THEME="powerlevel10k/powerlevel10k"

ZSH_DISABLE_COMPFIX=true

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  docker
  docker-compose
  zsh-vim-mode
)

source $ZSH/oh-my-zsh.sh

ulimit -S -n 8192

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(zoxide init zsh)"

source /Users/benutzer/.rvm/scripts/rvm

source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'

source ~/.dotfiles/.zsh/.alias.zsh
source ~/.dotfiles/.zsh/.export.zsh
source ~/.dotfiles/.zsh/.functions.zsh
source ~/.dotfiles/.zsh/.bindkeys.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.dotfiles/.zsh/.p10k.zsh ]] || source ~/.dotfiles/.zsh/.p10k.zsh

### Fix slowness of pastes with zsh-syntax-highlighting.zsh
pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
}

pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}
zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish
### Fix slowness of pastes

source /Users/benutzer/Library/Preferences/org.dystroy.broot/launcher/bash/br

# Vi Mode
MODE_CURSOR_VIINS="#666 blinking bar"
MODE_CURSOR_REPLACE="$MODE_CURSOR_VIINS #666"
MODE_CURSOR_VICMD="#666 block"
MODE_CURSOR_SEARCH="#666 steady underline"
MODE_CURSOR_VISUAL="$MODE_CURSOR_VICMD steady bar"
MODE_CURSOR_VLINE="$MODE_CURSOR_VISUAL #666"
