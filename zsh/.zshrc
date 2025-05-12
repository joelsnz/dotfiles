# set terminal colors to 256 bit
export TERM=xterm-256color

# PLUGIN MANAGER #
# oh-my-zsh path
export ZSH="$HOME/.oh-my-zsh"

# plugins
plugins=(
    zsh-autosuggestions
    zsh-vi-mode
    zsh-syntax-highlighting
)

# source omz
source $ZSH/oh-my-zsh.sh

# initialize completion and prompt
autoload -Uz compinit promptinit
compinit
promptinit

# ALIAS #
alias grep='grep --color=auto'
alias cat='bat --style=plain --paging=never'
alias ls='eza --group-directories-first'
alias tree='eza -T'
alias get_idf='. $HOME/esp/esp-idf/export.sh'
alias lout='loginctl terminate-user $USER'

# LIBRARY PATH #
export LD_LIBRARY_PATH=/usr/lib/

# STARSHIP #
eval "$(starship init zsh)"

# ZOXIDE #
eval "$(zoxide init zsh)"

# NVM #
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/share/nvm/init-nvm.sh" ] && source "/usr/share/nvm/init-nvm.sh"

# FZF #
# set up fzf key bindings and fuzzy completion
eval "$(fzf --zsh)"

# use fd instead of fzf
export FZF_DEFAULT_COMMAND="fdfind --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fdfind --type=d --hidden --strip-cwd-prefix --exclude .git"

_fzf_compgen_path() {
    fd --hidden --exclude .git . "$1"
}

# use fd to generate the list for directory completion
_fzf_compgen_dir() {
    fd --type=d --hidden --exclude .git . "$1"
}

# PATH #
export PATH="$HOME/.deno/bin:$PATH" # deno
export PATH="$HOME/.local/bin:$PATH" # local
export PATH="$HOME/.cargo/bin:$PATH" # cargo
export PATH="/usr/bin/vendor_perl:$PATH" # po4a
export PATH="/opt/clion-2024.2.3/bin:$PATH" # clion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
