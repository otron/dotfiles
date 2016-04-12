# case insensitive autocomplete
bind 'set completion-ignore-case on'

# rebind caps to escape
#xmodmap -e "clear lock" #disable caps lock switch
#xmodmap -e "keysym Caps_Lock = Escape" #set caps_lock as escape

# adding julia to PATH
export PATH="/home/$USER/julia:$PATH"

# add homebrew stuff? to PATH
export PATH="/usr/local/sbin:$PATH"

export EDITOR='vim'

# Show git repository in command prompt
export GIT_PS1_SHOWDIRTYSTATE=1
# export PS1='[ \[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] ]\n\$\[\033[00m\] '
PS1='[\u@\h: \w]\n\$ '

# forces prompt to appear at bottom of terminal
# thanks https://unix.stackexchange.com/questions/153102/how-to-start-xterm-with-prompt-at-the-bottom
TOLASTLINE=$(tput cup "$LINES")
PS1="\[$TOLASTLINE\]$PS1"

# Aliases
alias l="ls -GAp"

alias gs="git status -sb"
alias gb="git branch -vv"
alias gr="git remote -v"

# Load more specific setting files
source ~/.bash_osx
source ~/.git-completion.bash

alias redison="screen -dmS redis redis-server"
alias redisoff="redis-cli shutdown"

# locale fix. Can't remember what for.
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# add ~/.node/bin and  ~/.npm-packages/bin/npm to path.
# Relates to https://gist.github.com/DanHerbert/9520689
# (npm/brew fix for osx)
export PATH="$HOME/.node/bin:$HOME/.npm-packages/bin:$PATH"
