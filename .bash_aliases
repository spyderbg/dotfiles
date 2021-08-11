# Global aliases
alias reload_aliases="source ~/.bash_aliases"
alias aliases="vim ~/.bash_aliases && reload_aliases"

# Git aliases
alias g="git"
alias ga="git add"
alias gp="git push"
alias gg="git status"
alias gs="git stash"
alias gb="git branch"
alias gc="git checkout"
alias gf="git fetch"
alias gfa="git fetch --all"
alias gfp="git fetch --prune"
alias gsa="git stash apply"
alias gsc="git stash clear"
alias gsp="git stash pop"
alias gm="git commit"
alias gma="git commit --amend"
alias gd="git diff"
alias gds="git diff --chached"
alias gl="clear && git lola -18"
alias gspull="git stash && git pull && git stash apply"
alias grebase="git rebase develop"
alias grelease="git checkout master && git pull && git merge develop && git push && git checkout -"

# Docker aliases
alias d="docker"
alias di="sudo docker images"
alias dc="sudo docker container"
alias dps="sudo docker ps"
alias drun="sudo docker run"
alias dstop="sudo docker stop"
alias drestart="sudo dcoker restart"
alias dpull="sudo docker pull"

# SSH machines
alias ssh_build='ssh unity@10.48.22.13'
alias ssh_dev='ssh clicker@kinkoid01.hh'
alias ssh_clicker='ssh clicker@web6-ams.srv.aur.be'
alias ssh_test='ssh clicker_test@web6-ams.srv.aur.be'
alias ssh_prod='ssh clicker_prod@web6-ams.srv.aur.be'
alias ssh_nutaku='ssh clicker_nutaku@web6-ams.srv.aur.be'
alias ssh_sandbox='ssh clicker_nutaku_sandbox@web6-ams.srv.aur.be'
alias ssh_date='ssh date@web6-ams.srv.aur.be'
alias ssh_adm2='ssh supernova@adm2.srv.aur.be'
alias ssh_ptr='sshpass -p ptr@312 ssh ptr@5.79.84.53'
alias ssh-103='sshpass -p spyder ssh spyder@192.168.0.103'
alias ssh-103-plots='sshpass -p spyder ssh spyder@192.168.0.103 "ps -aux | grep \"chia plots\""'
alias ssh-104='sshpass -p spyder ssh spyder@192.168.0.104'
alias ssh-104-plots='sshpass -p spyder ssh spyder@192.168.0.104 "ps -aux | grep \"chia plots\""'
alias ssh-105='sshpass -p spyder ssh spyder@192.168.0.105'
alias ssh-105-plots='sshpass -p spyder ssh spyder@192.168.0.105 "ps -aux | grep \"chia plots\""'
alias ssh-106='sshpass -p spyder ssh spyder@192.168.0.106'
alias ssh-106-plots='sshpass -p spyder ssh spyder@192.168.0.106 "ps -aux | grep \"chia plots\""'
alias ssh-107='sshpass -p spyder ssh spyder@192.168.0.107'
alias ssh-107-plots='sshpass -p spyder ssh spyder@192.168.0.107 "ps -aux | grep \"chia plots\""'
alias ssh-108='sshpass -p spyder ssh spyder@192.168.0.108'
alias ssh-108-plots='sshpass -p spyder ssh spyder@192.168.0.108 "ps -aux | grep \"chia plots\""'
alias ssh-109='sshpass -p spyder ssh spyder@192.168.0.109'
alias ssh-109-plots='sshpass -p spyder ssh spyder@192.168.0.109 "ps -aux | grep \"chia plots\""'
alias ssh-110='sshpass -p spyder ssh spyder@192.168.0.110'
alias ssh-110-plots='sshpass -p spyder ssh spyder@192.168.0.110 "ps -aux | grep \"chia plots\""'
alias ssh-111='sshpass -p spyder ssh spyder@192.168.0.111'
alias ssh-113='sshpass -p spyder ssh spyder@192.168.0.113'

# Project paths
alias _temp="cd /mnt/c/_Projects/temp/"
alias _proj="cd /mnt/c/_Projects/"
alias _mon="cd /mnt/c/_Projects/Unity/MonsterSmash/"
alias _cpp="cd /mnt/c/_Projects/Cpp/"
alias _unity="cd /mnt/c/_Projects/Unity/"
alias _soh="cd ~/_Projects/BeastBurst/soh-client/Assets/ScarsOfHonor/"
alias _sohc="cd ~/_Projects/BeastBurst/soh-client/"
alias _sohs="cd ~/_Projects/BeastBurst/soh-server/"
alias _sohf="cd ~/_Projects/BeastBurst/soh-flatbuffers/"

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
alias sql_login="sudo mysql -u root -ppassword"

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


