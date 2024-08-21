#!/bin/bash
alias ..='cd ..'
alias grep='grep --color=auto'

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ls='ls -1 --color=auto --group-directories-first'
alias lst='ls -trl'

# Ubuntu
# alias setJava='sudo update-alternatives --config java && source ~/.bashrc'
alias setJava='sudo archlinux-java set'

alias deleteAllDockers='docker kill $(docker ps -q) && docker kill $(docker ps -q) && docker rmi $(docker images -q)'

alias pacman-add='sudo pacman -S --needed'
alias pacman-upgrade='sudo pacman -Syu'
alias pacman-remove='sudo pacman -Rns'

alias showLastGitTag='git describe --tags --abbrev=0'

alias findDir='sudo find / -type d -name'

alias monikFullHD='xrandr --output eDP-1 --mode 1920x1080'
alias monikRightFullHD='xrandr --output eDP-1-1 --mode 2560x1600 --scale 1 --output HDMI-0 --mode 1920x1080 --right-of eDP-1-1'
alias monikRight4K='xrandr --output eDP-1 --mode 2560x1600 --scale 1 --output HDMI-1-0 --mode 1920x1080 --right-of eDP-1
'
