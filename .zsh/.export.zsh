export PATH="/usr/local/bin:$PATH"

export PATH="/usr/local/sbin:$PATH"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export BAT_PAGER="less -RF"

export PATH="/Users/benutzer/.yarn/bin:/Users/benutzer/.config/yarn/global/node_modules/.bin:/usr/local/sbin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/benutzer/.vimpkg/bin"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$PATH:$HOME/.composer/vendor/bin"

export SERVER_CONTEXT="dev"

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$HOME/.rvm/gems/default/bin"

export PATH="$PATH:$HOME/.local/bin/"

export PAGER=nvimpager
export MANPAGER=nvimpager
export VISUAL=nvim

export HIGHLIGHT_STYLE=solarized-dark

if [ -n "$RANGER_LEVEL" ]; then export PS1="[ranger]$PS1"; fi

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
  --color fg:#ebdbb2,bg:#282828,hl:#fabd2f,fg+:#ebdbb2,bg+:#3c3836,hl+:#fabd2f
  --color info:#83a598,prompt:#bdae93,spinner:#fabd2f,pointer:#83a598,marker:#fe8019,header:#665c54'
