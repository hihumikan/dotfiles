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

## file
alias pwdc='pwd | tr -d "\n" | pbcopy'
alias emacs='nvim'
alias vim='nvim'
alias egrep='egrep --color=auto'

## docker
alias d='docker' 

## dir
alias ls='exa'
alias lss='exa --git --time-style=long-iso -gl --icons'
alias lsss='exa -agl --time-style=long-iso -g --git --icons'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'


#shell 
## StarShip
eval "$(starship init zsh)"

## HomeBrew
export PATH="$PATH:/opt/homebrew/bin/"

## gpg
export GPG_TTY=$TTY

## zsh-autocomplete ~/Git
source ~/Git/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# language
## volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

## anyenv
eval "$(anyenv init -)"

## Rustlang
source $HOME/.cargo/env


## Script
cdls ()
{
    \cd "$@" && clear && lsss
}
alias cd="cdls"


