eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

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


. /home/linuxbrew/.linuxbrew/opt/asdf/libexec/asdf.sh

source "$HOME/.cargo/env"

eval "$(starship init zsh)"


eval "$(direnv hook zsh)"
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
export PATH=$PATH:~/.yarn/bin

# pnpm
export PNPM_HOME="/home/hihumikan/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export PATH="${PATH}:${HOME}/.krew/bin"

export PATH="$PATH:/home/hihumikan/istio-1.17.2/bin"

INSTALLATION_PATH=$(brew --prefix switch) && source $INSTALLATION_PATH/switch.sh
alias kx="switch"

source <(kubectl completion zsh)
