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
alias cdd='cd ./rank'

## file
alias pwdc='pwd | tr -d "\n" | pbcopy'
alias egrep='egrep --color=auto'

## bat
alias batt='bat -p'
alias battt='bat --paging=never'
alias batttt='bat -A -p'

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

alias PA=". .venv/bin/activate"
alias PD="deactivate"
alias E='exec $SHELL -l'

alias dc="docker compose"
alias dps="docker ps"

alias cdrive="cd /mnt/c/Users/musec/"
alias wtu="wt.exe wsl.exe -d Ubuntu --cd "$PWD""

cdls() {
    \cd "$@" && clear && lss
}
alias cd="cdls"

# Package
## Linux Brew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"
eval "$(starship init zsh)"
eval "$(sheldon source)"
export PATH="/home/hihumikan/.local/bin:$PATH"
export GPG_TTY=$(tty)
eval "$(~/.local/bin/mise activate zsh)"
