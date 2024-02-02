## Git alias
alias ga='git add'
alias gd='git diff'
alias gs='git status'
alias gps='git push'
alias gpl='git pull'
alias gb='git branch'
alias gst='git status'
alias gco='git checkout'
alias gf='git fetch'
alias gc='git commit'
alias gcz='git cz'
alias cdd='cd ./RANK'

## file
alias pwdc='pwd | tr -d "\n" | pbcopy'
alias egrep='egrep --color=auto'

## dir
alias ls='ls'
alias lss='ls --time-style=long-iso -aglh'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

## apt alias
alias apti='sudo apt install -y'
alias aptr='sudo apt remove -y'
alias aptu='sudo apt update && sudo apt upgrade -y'

## docker alias
alias dc='docker compose'

## etc
alias ipa='ip -c a'
alias ipas='ip -c -s a'

## Script

dotfiles_home="./dotfiles"

async_function() {
    (cd "$dotfiles_home" && git diff --quiet || git pull origin master) > /dev/null 2>&1
}

async_function & disown

cdls() {
    \cd "$@" && clear && lss
}
alias cd="cdls"
