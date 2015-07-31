# case insensitive autocomplete
bind 'set completion-ignore-case on'

# rebind caps to escape
#xmodmap -e "clear lock" #disable caps lock switch
#xmodmap -e "keysym Caps_Lock = Escape" #set caps_lock as escape

# adding julia to PATH
export PATH="/home/$USER/julia:$PATH"

export EDITOR='vim'

# Show git repository in command prompt
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '

# Aliases
alias l="ls -GAp"

alias gs="git status -sb"
alias gb="git branch -vv"
alias gr="git remote -v"

# Load more specific setting files
source .bash_osx
