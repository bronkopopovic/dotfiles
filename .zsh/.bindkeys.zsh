# Vi mode
bindkey -v

# disable ESC bindings
bindkey -rpM viins '^['
bindkey -rpM vicmd '^['

# Edit prompt in vim with shift+v
bindkey -M vicmd V edit-command-line

# delete words with alt+del
bindkey -M viins '^[^?' backward-kill-word

# fzf in normal mode
bindkey -M vicmd '^R' fzf-history-widget \
                 '^T' fzf-file-widget

# history search with ctrl+h and ctrl+k
autoload -Uz history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey -M vicmd '^K' history-beginning-search-backward-end \
                 '^J' history-beginning-search-forward-end
bindkey -M viins '^K' history-beginning-search-backward-end \
                 '^J' history-beginning-search-forward-end

bindkey '^[0C' forward-char \
        '^[0D' forward-char
