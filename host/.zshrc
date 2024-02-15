## Git alias
alias ga='git add'
alias gaa='git add --all'
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
alias gpsup='git push --set-upstream origin $(git_current_branch)'
alias cdd='cd ./RANK'

## file
alias pwdc='pwd | tr -d "\n" | pbcopy'
alias egrep='egrep --color=auto'

## bat
alias cat='bat --paging=never -p'
alias batt='bat -p'
alias battt='bat -A -p'

## dir
alias ls='eza'
alias lss='eza --time-style=long-iso -aglh --icons'
alias lsss='eza --git --time-style=long-iso -aglh --icons'

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

alias dotfilesync=async_function

# async_function & disown

cdls() {
    \cd "$@" && clear && lss
}
alias cd="cdls"

# Package
## Linux Brew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

## starship
eval "$(starship init zsh)"

## Volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

## Sheldon
eval "$(sheldon source)"


## gibo comp
eval "$(gibo completion zsh)"
