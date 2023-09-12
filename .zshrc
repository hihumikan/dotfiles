# alias
## git
alias g='git'
alias ga='git add'
alias gd='git diff'
alias gs='git status'
alias gp='git push'
alias gb='git branch'
alias gst='git status'
alias gco='git checkout'
alias gf='git fetch'
alias gc='git commit'
alias gcz='git cz'
alias cdd='cd ./dev/'

## file
alias pwdc='pwd | tr -d "\n" | pbcopy'
alias egrep='egrep --color=auto'

## dir
alias ls='eza'
alias lss='eza --git --time-style=long-iso -gl --icons'
alias lsss='eza -agl --time-style=long-iso -g --git --icons'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'


## Script
cdls ()
{
    \cd "$@" && clear && lsss
}
alias cd="cdls"

# Package
## Linux Brew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

## Sharship
eval "$(starship init zsh)"

## Volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

## Sheldon
eval "$(sheldon source)"

## asdf
. "$HOME/.asdf/asdf.sh"
fpath=(${ASDF_DIR}/completions $fpath)
