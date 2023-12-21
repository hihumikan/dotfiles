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

function is_dirty() {
    local dotfiles_dir=./dotfiles
    test -n "$(git -C ${dotfiles_dir} status --porcelain)" ||
        ! git -C ${dotfiles_dir} diff --exit-code --stat --cached origin/main > /dev/null
}

function auto_sync() {
    local dotfiles_dir=./dotfiles
    echo -e "\e[1;36m[[dotfiles]]\e[m"
    echo -en "\e[1;36mTry auto sync...\e[m"
    if (cd $dotfiles_dir && git pull && cd $HOME) > /dev/null 2>&1; then
        if is_dirty $? ; then
            echo -e "\e[1;31m [failed]\e[m"
            echo -e "\e[1;33m[warn] DIRTY DOTFILES\e[m"
            echo -e "\e[1;33m    -> Push your local changes in $dotfiles_dir\e[m"
        else
            echo -e "\e[1;32m [succeeded]\e[m"
        fi
    else
        echo -e "\e[1;31m [failed]\e[m"
    fi
}

auto_sync

if [[ ! -o login ]]; then
    warn_dirty
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


