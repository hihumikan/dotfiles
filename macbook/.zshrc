# Aliases
alias ga='git add'
alias gaa='git add --all'
alias gd='git diff'
alias gs='git status'
alias gps='git push'
alias gpl='git pull'
alias gb='git branch'
alias gco='git checkout'
alias gf='git fetch'
alias gc='git commit'
alias gcz='git cz'
alias gsd='git stash drop'
alias gl='git log --oneline'
alias gpsup='git push --set-upstream origin $(git_current_branch)'

alias cdd='cd ./RANK'
alias pwdc='pwd | tr -d "\n" | pbcopy'
alias egrep='egrep --color=auto'

alias batt='bat -p'
alias battt='bat --paging=never'
alias batttt='bat -A -p'

alias ls='eza'
alias lss='eza --time-style=long-iso -aglh --icons'
alias lsss='eza --git --time-style=long-iso -aglh --icons'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias ipa='ip -c a'
alias ipas='ip -c -s a'

alias PA=". .venv/bin/activate"
alias PD="deactivate"
alias E='exec $SHELL -l'

alias dc="docker compose"
alias dps="docker ps"

alias idea='open -na "IntelliJ IDEA.app" .'
alias android='open -na "Android Studio.app" .'

# Functions

cdls() {
    \cd "$@" && clear && lss
}
alias cd="cdls"

fgh() {
    git branch -a | fzf -m --height=40% --reverse | xargs -I% git checkout %
}

ghq-fzf() {
    selected_dir=$(ghq list --vcs git --full-path | fzf --query "$LBUFFER")
    if [ -n "$selected_dir" ]; then
        if [ -t 1 ]; then
            cd "${selected_dir}" && exa -l || return
        fi
    fi
}

# Path

eval "$(/opt/homebrew/bin/brew shellenv)"

eval "$(starship init zsh)"

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

eval "$(sheldon source)"

eval "$(gibo completion zsh)"

source "$HOME/.rye/env"

. "$HOME/.cargo/env"

setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt share_history
