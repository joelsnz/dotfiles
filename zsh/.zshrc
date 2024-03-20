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
alias ls='eza --group-directories-first'
alias tree='eza -T'

export LD_LIBRARY_PATH=/usr/lib/

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# starship theme
eval "$(starship init zsh)"

# zoxide
eval "$(zoxide init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
