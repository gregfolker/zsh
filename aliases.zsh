#!/usr/bin/env bash

alias shutdown="sudo shutdown now"
alias restart="sudo reboot"
alias suspend="sudo pm-suspend"


# list only files (not directories)
alias lf="find . -maxdepth 1 -type f"

# list files > 500M
alias bigf="find . -xdev -type f -size +500M"

alias ls="ls -G"
alias ll="ls -lahF"
alias llt="ls -lahFtr"
alias la="ls -lA"
alias l="ls -CF"

alias d="dirs -v"
for index ({1..9}) alias "$index"="cd +${index}"; unset index

alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

alias grep="rg"

alias lynx="lynx -vikeys -accept_all_cookies"

alias mkdir="mkdir -p"
