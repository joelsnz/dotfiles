# oh-my-fish path
export ZSH="$HOME/.oh-my-zsh"

plugins=(
    zsh-autosuggestions
    zsh-vi-mode
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

autoload -Uz compinit promptinit
compinit
promptinit

alias grep='grep --color=auto'
alias cat='bat --style=plain --paging=never'
alias ls='exa --group-directories-first'
alias tree='exa -T'

export LD_LIBRARY_PATH=/usr/lib/

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# starship theme
eval "$(starship init zsh)"

# zoxide
eval "$(zoxide init zsh)"
