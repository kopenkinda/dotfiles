#!/usr/bin/env bash

#misc aliases
alias cls='clear'
alias c='code .'
alias open='xdg-open'

#cd aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias dl='cd ~/Downloads'
alias dt='cd ~/Desktop'
alias dev='cd ~/dev'

# ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# git aliases
alias gcm='git commit -m '
alias ga='git add '
alias gaa='git add .'
alias gaaa='git add --all'
alias gss='git status'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
