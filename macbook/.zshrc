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

## etc
alias ipa='ip -c a'
alias ipas='ip -c -s a'

# async_function & disown

cdls() {
    \cd "$@" && clear && lss
}
alias cd="cdls"

# Package
## Linux Brew
eval "$(/opt/homebrew/bin/brew shellenv)"

## starship
eval "$(starship init zsh)"

## Volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

## Sheldon
eval "$(sheldon source)"

## gibo comp
eval "$(gibo completion zsh)"
