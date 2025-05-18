# Global aliases
#
alias reload_aliases="source ~/.bash_aliases"
alias aliases="vim ~/.bash_aliases && reload_aliases"

# Common aliases
alias xclip='xclip -sel clip'
alias xmod='xmodmap ~/.Xmodmap'
alias xtee='echo 2 | sudo tee /sys/module/hid_apple/parameters/fnmode'

# Git aliases
alias g="git"
alias ga="git add"
alias gap="ga . ; git restore --staged UserSettings/Layouts/default-2022.dwlt ; git restore --staged ProjectSettings/ProjectVersion.txt ; git restore --staged ProjectSettings/ProjectSettings.asset"
alias gp="git push"
alias gpn='git push --set-upstream origin'
alias gpc='git push --set-upstream origin $(git branch --show-current)'
alias gpf='git push --force-with-lease'
alias gpullrec='for dir in */; do (cd "$dir" && [ -d .git ] && echo && echo "Pulling in $dir" && git pull); done'
alias gsup='git submodule update'
alias gsubpull='git pull && git submodule update'
alias gr='git restore --staged'
alias gg="git status"
alias ggs="git status -s | cut -c4-"
alias gt="git tag"
alias gb="git branch"
alias gc="git checkout"
alias gf="git fetch"
alias gfa="git fetch --all"
alias gfp="git fetch --prune"
alias gs="git stash"
alias gsl="git stash list"
alias gsa="git stash apply"
alias gsc="git stash clear"
alias gsp="git stash push -m"
alias gspop='git stash pop'
alias gm="git commit"
alias gma="git commit --amend"
alias gd="git diff"
alias gds="git diff --chached"
alias glp="git log -p -1"
alias glone='git log --oneline'
alias gl="clear && git graph --since=yesterday"
alias glt="clear && git log --since=yesterday"
alias glgt="clear && git lola -25"
alias gspull="git stash && git pull && git stash apply"
alias grebase="git rebase dev"
alias grelease="git checkout main && git pull && git merge dev && git push && git checkout -"
alias gdelete='git push origin -d'
alias grmmerged='git branch --merged | egrep -v "(^\*|main|master|dev|develop)" | xargs git branch -d' 
alias gsub='cat .gitmodules | grep path | awk "{print $3}"'
alias gm1='cat .gitmodules | grep path -m1 | sed "s/path\ =\ //g"'
alias gm2='cat .gitmodules | grep path | sed "1,1d" | sed "s/path\ =\ //g"'
alias gm3='cat .gitmodules | grep path | sed "2,1d" | sed "s/path\ =\ //g"'
alias gcdm1='cd $(gm1)'
alias gcdm2='cd $(gm2)'
alias gcdm3='cd $(gm3)'
alias ghash='git rev-parse --short HEAD'
alias ghashx='git rev-parse --short HEAD | xclip'

# Svn aliases
# alias ss='svn stat'
# alias sa='svn add'

# Docker aliases
#
alias di="sudo docker image"
alias dis="sudo docker images"
alias dc="sudo docker container"
alias dc-ls='sudo docker container ls --format="table {{.ID}}\t{{.Status}}\t{{.Names}}\t{{.Image}}"'
alias dn="sudo docker network"
alias dcomp="sudo docker compose"
alias dcompup="sudo docker compose up -d"
alias dcompdown="sudo docker compose down"
alias db="sudo docker build"
alias dps="sudo docker ps"
alias drun="sudo docker run"
alias dstop="sudo docker stop"
alias drestart="sudo dcoker restart"
alias dpull="sudo docker pull"
alias dexec="sudo docker exec -it"

# dotnet aliases
alias dotb='dotnet build --project'
alias dotr='dotnet run --project'
alias dotdbu='dotnet ef database update'

# SSH machines
alias ssh-office='sshpass -f office_psw ssh spyder@151.251.174.127'
alias ssh-server='sshpass -f server_psw ssh spyder@82.103.77.45'
alias ssh-50='sshpass -f password ssh spyder@192.168.50.50'
alias ssh-101='sshpass -f password ssh spyder@192.168.50.101'
alias ssh-101-plots='sshpass -f password ssh spyder@192.168.50.101 "ps -aux | grep \"chia plots\""'
alias ssh-102='sshpass -f password ssh spyder@192.168.50.102'
alias ssh-102-plots='sshpass -f password ssh spyder@192.168.50.102 "ps -aux | grep \"chia plots\""'
alias ssh-103='sshpass -f password ssh spyder@192.168.50.103'
alias ssh-103-plots='sshpass -f password ssh spyder@192.168.50.103 "ps -aux | grep \"chia plots\""'
alias ssh-104='sshpass -f password ssh spyder@192.168.50.104'
alias ssh-104-plots='sshpass -f password ssh spyder@192.168.50.104 "ps -aux | grep \"chia plots\""'
alias ssh-105='sshpass -f password ssh spyder@192.168.50.105'
alias ssh-105-plots='sshpass -f password ssh spyder@192.168.50.105 "ps -aux | grep \"chia plots\""'
alias ssh-106='sshpass -f password ssh spyder@192.168.50.106'
alias ssh-106-plots='sshpass -f password ssh spyder@192.168.50.106 "ps -aux | grep \"chia plots\""'
alias ssh-107='sshpass -f password ssh spyder@192.168.50.107'
alias ssh-107-plots='sshpass -f password ssh spyder@192.168.50.107 "ps -aux | grep \"chia plots\""'
alias ssh-108='sshpass -f password ssh spyder@192.168.50.108'
alias ssh-108-plots='sshpass -f password ssh spyder@192.168.50.108 "ps -aux | grep \"chia plots\""'

# Project paths
alias _proj='cd ~/_Projects/'
alias _temp='cd ~/_Projects/temp/'
alias _mon="cd /mnt/c/_Projects/Unity/MonsterSmash/"
alias _cpp='cd ~/_Projects/Cpp/'
alias _dot='cd ~/_Projects/Dotnet/'
alias _unity='cd /mnt/c/_Projects/Unity/'
alias _soh="cd ~/_Projects/BeastBurst/soh-client/Assets/ScarsOfHonor/"
alias _sohc="cd ~/_Projects/BeastBurst/soh-client/"
alias _sohs="cd ~/_Projects/BeastBurst/soh-server/"
alias _sohf="cd ~/_Projects/BeastBurst/soh-flatbuffers/"
alias _marx="cd ~/_Projects/MarXman/"
alias _marxc="cd ~/_Projects/MarXman/mx-core"
alias _marxa="cd ~/_Projects/MarXman/mx-assets"
alias _marxw="cd ~/_Projects/MarXman/mx-site"
alias _marxs="cd ~/_Projects/MarXman/mx-services"
alias _marxk="cd ~/_Projects/MarXman/KiddoWords"
alias _iw='cd ~/_Projects/Playwing/InstantWar'
alias _cri='cd ~/_Projects/TritanTechnology/Cricket'
alias _crie='cd ~/_Projects/TritanTechnology/Cricket/Assets/Editor/Resources/Economy'
alias _crip='cd ~/_Projects/TritanTechnology/Cricket/Assets/Editor/Resources/Proto'

# EGT paths
alias _games='cd ~/_Projects/Egt/games'
alias _itl='cd ~/_Projects/Egt/italy_games'

# PM2 commands
alias pm2-loader="pm2 start /mnt/c/_Projects/clicker-server/content-loader/loader.js"
alias pm2-loader-stop="pm2 stop loader"
alias pm2-game="pm2 start /mnt/c/_Projects/clicker-server/server/game.js"
alias pm2-game-stop="pm2 stop game"

alias pm2-dev-restart="ssh clicker@kinkoid01.hh 'pm2 restart clicker-content-dev' && ssh clicker@kinkoid01.hh 'pm2 restart clicker-game-dev'"
alias pm2-dev-list="ssh clicker@kinkoid01.hh 'pm2 list'"

# Mysql 
alias sql_open="sudo mysql -u root -ppassword vibranium_auth"
alias sql_start="sudo service mysql start"
alias sql_stop="sudo service mysql stop"
alias sql_status="sudo service mysql status"
alias sql_login="sudo mysql -u root -ppassword -P 3308"
alias sql_dump="sudo mysqldump -u root -ppassword -P 3308 --lock-tables"
alias sql_conn='mysql -h 82.103.77.45 -P 3306 -u admin -pspyder'

# Ports
alias lsof_tcp="sudo lsof -nP -iTCP -sTCP:LISTEN"

# SoH commands
alias auth_start="~/_Projects/BeastBurst/soh-server/Scripts/start_authserver.sh"
alias auth_stop="~/_Projects/BeastBurst/soh-server/Scripts/stop_authserver.sh"
alias auth_status="~/_Projects/BeastBurst/soh-server/Scripts/status_authserver.sh"
alias auth_build="~/_Projects/BeastBurst/soh-server/Scripts/build_authserver.sh"
alias world_start="~/_Projects/BeastBurst/soh-server/Scripts/start_worldserver.sh"
alias world_stop="~/_Projects/BeastBurst/soh-server/Scripts/stop_worldserver.sh"
alias world_status="~/_Projects/BeastBurst/soh-server/Scripts/status_worldserver.sh"
alias world_build="~/_Projects/BeastBurst/soh-server/Scripts/build_worldserver.sh"
alias emul_build="~/_Projects/BeastBurst/soh-server/Scripts/build_emulator.sh"
alias soh_build="emul_build && auth_build && world_build"

# Chia commands
alias chia-plots='ps -aux | grep "chia plots"'
alias chia-num-plots='ps -aux | grep "chia plots" | wc -l'
alias chia-list-plots='find /media/spyder -maxdepth 3 -iname "*.plot"'
alias chia-list-num-plots='find /media/spyder -maxdepth 3 -iname "*.plot" | wc -l'
alias chia-moving='while [[ ! -z "$(pidof mv)" ]]; do echo "Moving ..."; sleep 10; done'

# Kill commands
alias killt='pgrep -f gnome-text-editor >/dev/null && pkill -15 -f gnome-text-editor >/dev/null 2>&1'

