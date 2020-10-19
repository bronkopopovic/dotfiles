alias c="clear"

alias rr='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

#alias l="colorls -lA --git-status --sort-files" 
alias l="exa -l -a -g --group-directories-first"
alias cat="nvimpager -c"

alias art="php artisan"
alias artdo="docker exec -it energiemodell-dashboard_application php artisan"
alias laradockup="docker-compose up -f laradock/docker-compose.yml -d nginx postgres"
alias laradockdown="docker-compose down -f laradock/docker-compose.yml nginx postgres"

alias mage-clear="bin/magento cache:flush && rm -rf generated/code var/view_preprocessed pub/static/frontend pub/static/deployed_version.txt && cd tools && gulp styles && gulp svg && cd .."
alias mage-clear2="bin/magento cache:flush && rm -rf generated/code var/view_preprocessed pub/static/frontend pub/static/deployed_version.txt"
alias mage-clear3="rm -rf generated/code var/view_preprocessed pub/static/frontend pub/static/deployed_version.txt "

alias bm="php -dmemory_limit=2048M bin/magento"

alias setup-cjd="bin/magento setup:install --base-url=http://cjd.test --db-host=localhost --db-name=cjd231 --db-user=root --db-password=Luum --backend-frontname=admin --admin-firstname=admin --admin-lastname=admin --admin-email=hock@luum.ms --admin-user=admin --admin-password=19Kyc007 --language=en_US --currency=EUR --timezone=Europe/Berlin --use-rewrites=1"
alias setup-sepia="python3 ~/Desktop/temp/cjd_test/sepia_config/sepia.py"

alias ezc="nvim ~/.zshrc"
alias evc="nvim ~/.config/nvim/init.vim"

alias dotfiles="cd ~/.dotfiles && nvim -c 'Defx'"

alias valetls="valet links && echo '\nProxies:' && valet proxies"

alias magerun="n98-magerun2.phar"

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

alias vhost="nvim /usr/local/etc/httpd/extra/httpd-vhosts.conf"
alias vssl="nvim /usr/local/etc/httpd/extra/httpd-ssl.conf"
alias apacherestart="sudo apachectl -k restart"
alias ehtt="nvim /usr/local/etc/httpd/httpd.conf"
alias engx="nvim /usr/local/etc/nginx/nginx.conf"

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

alias icat="kitty +kitten icat"
