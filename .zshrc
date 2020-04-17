if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export TERM="xterm-256color"

export ZSH=/Users/benutzer/.oh-my-zsh

MAILCHECK=0

ZSH_THEME="powerlevel10k/powerlevel10k"

ZSH_DISABLE_COMPFIX=true

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  history-substring-search
  history-search-multi-word
)

source $ZSH/oh-my-zsh.sh

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

alias c="clear"

alias rr='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

#alias l="colorls -lA --git-status --sort-files" 
alias l="exa -l -a -g --group-directories-first"
alias cat="nvimpager -c"

alias art="php artisan"

alias mage-clear="bin/magento cache:flush && rm -rf generated/code var/view_preprocessed pub/static/frontend pub/static/deployed_version.txt && cd tools && gulp styles && gulp babel && gulp svg && cd .."
alias mage-clear2="bin/magento cache:flush && rm -rf generated/code var/view_preprocessed pub/static/frontend pub/static/deployed_version.txt"
alias mage-clear3="rm -rf generated/code var/view_preprocessed pub/static/frontend pub/static/deployed_version.txt "

alias bm="php -dmemory_limit=2048M bin/magento"

alias setup-cjd="bin/magento setup:install --base-url=http://cjd.test --db-host=localhost --db-name=cjd231 --db-user=root --db-password=Luum --backend-frontname=admin --admin-firstname=admin --admin-lastname=admin --admin-email=hock@luum.ms --admin-user=admin --admin-password=19Kyc007 --language=en_US --currency=EUR --timezone=Europe/Berlin --use-rewrites=1"
alias setup-sepia="python3 ~/Desktop/temp/cjd_test/sepia_config/sepia.py"

alias ezc="vi ~/.zshrc"
alias evc="vi ~/.config/nvim/init.vim"

alias gs="git status"
alias ts="tig status"
alias gaa="git add --all"
alias gm="git commit -m"
alias gd="git diff"
alias gp="git push -u"
alias gl="git log"
alias tl="tig log"
alias gt="git tag -l --sort=-v:refname"

alias tmux="tmux -u"
alias tm="tmux"
alias tma="tmux a -t"
alias tml="tmux list-sessions"

alias vhost="vi /usr/local/etc/httpd/extra/httpd-vhosts.conf"
alias vssl="vi /usr/local/etc/httpd/extra/httpd-ssl.conf"
alias apacherestart="sudo apachectl -k restart"
alias ehtt="vi /usr/local/etc/httpd/httpd.conf"
alias engx="vi /usr/local/etc/nginx/nginx.conf"

alias rzsh="source ~/.zshrc"

alias watchmysql="watch -n 0.2 mysqladmin -u root --password=Luum --verbose processlist"

alias sshdev="ssh ssh-w011abca@dev.luum.ms"
alias sshvall="ssh ssh-w0170b48@w0170b48.kasserver.com"
alias sshdev2="ssh luumdev@luumdev.de"
alias sshst="ssh stetson.eu@serverd01.anthec.de"

alias vim="nvim"
alias vi="nvim"
alias vs="codium"
alias code="vs"

alias togglex="toggle-xdebug.sh"

alias countfiles="find . -type f | wc -l"
alias countphplines="find . -name '*.php' | xargs wc -l"

. /Users/Benutzer/z-cd/z.sh

#source $(dirname $(gem which colorls))/tab_complete.sh

export PATH="/usr/local/bin:$PATH"

export PATH="/usr/local/sbin:$PATH"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export BAT_PAGER="less -RF"

ulimit -S -n 8192

#test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


export PATH="/Users/benutzer/.yarn/bin:/Users/benutzer/.config/yarn/global/node_modules/.bin:/usr/local/sbin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/benutzer/.vimpkg/bin"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$PATH:$HOME/.composer/vendor/bin"

export SERVER_CONTEXT="dev"

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source /Users/benutzer/.rvm/scripts/rvm

source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export PATH="$PATH:$HOME/.local/bin/"

export PAGER=nvimpager
export MANPAGER=nvimpager
export VISUAL=nvim

export HIGHLIGHT_STYLE=solarized-dark

if [ -n "$RANGER_LEVEL" ]; then export PS1="[ranger]$PS1"; fi


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

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
