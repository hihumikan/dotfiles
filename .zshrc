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
alias fuck='thefuck'
alias ipa='ip -c a'
alias ipas='ip -c -s a'

## Script
cdls() {
    \cd "$@" && clear && lss
}
alias cd="cdls"

dotfiles_home="./dotfiles"
if test -n "$(git -C ${dotfiles_home} status --porcelain)" ||
! git -C ${dotfiles_home} diff --exit-code --stat --cached origin/master > /dev/null ; then
    echo -e "\e[36m=== DOTFILES IS DIRTY ===\e[m"
    echo -e "\e[33mThe dotfiles have been changed.\e[m"
    git -C ${dotfiles_home} pull
fi

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


