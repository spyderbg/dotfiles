# Global aliases

alias reload_aliases="source ~/.bash_aliases"
alias aliases="vim ~/.bash_aliases && reload_aliases"

alias g="git"
alias ga="git add"
alias gp="git push"
alias gg="git status"
alias gs="git stash"
alias gb="git branch"
alias gc="git checkout"
alias gsa="git stash apply"
alias gsc="git stash clear"
alias gsp="git stash pop"
alias gm="git commit"
alias gma="git commit --amend"
alias gd="git diff"
alias gds="git diff --chached"
alias gl="clear && git lola -20"
alias gspull="git stash && git pull && git stash apply"
alias grebase="git rebase develop"
alias gmerge="git merge pre_develop"
alias grelease="git checkout develop && git pull && git merge pre_develop && git push && git checkout pre_develop"

alias _proj="cd /mnt/d/Chibi/clicker-client/"
alias _serv="cd /mnt/d/Chibi/clicker-server/"


alias pm2-loader="pm2 start /mnt/c/_Projects/clicker-server/content-loader/loader.js"
alias pm2-loader-stop="pm2 stop loader"
alias pm2-game="pm2 start /mnt/c/_Projects/clicker-server/server/game.js"
alias pm2-game-stop="pm2 stop game"

alias pm2-dev-restart="ssh clicker@kinkoid01.hh 'pm2 restart clicker-content-dev' && ssh clicker@kinkoid01.hh 'pm2 restart clicker-game-dev'"
alias pm2-dev-list="ssh clicker@kinkoid01.hh 'pm2 list'"

