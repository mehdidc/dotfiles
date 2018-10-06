alias gp='git pull'
alias tmr='tmux a -t'
alias tmls='tmux ls'
alias tms='tmux new -s'
export EDITOR=vim
alias today='task scheduled:today'
alias tomorrow='task scheduled:tomorrow'
alias yesterday='task scheduled:yesterday'
alias 'cd..'='cd ..'
alias ls='ls --color=auto'
alias 'gitdiff'='git diff --color --no-index'
alias 'rcopy'='rclone copy'
function ssh_tunneling(){
    INPORT=$1
    OUTPORT=$2
    SERVER=$3
    for v in $(seq 1 10000); do ssh -L $INPORT:$SERVER:$OUTPORT mcherti@romeo1.univ-reims.fr -N -v -g; done
}
function gcu(){
    git add -u
    git commit -m update
    git push origin $(git branch | grep '\*'|cut -d ' ' -f2)
}
