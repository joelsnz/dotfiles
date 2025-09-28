# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# set prompt theme to pl10k
ZSH_THEME=powerlevel10k/powerlevel10k

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
alias lout='loginctl terminate-user $USER'

# LIBRARY PATH #
export LD_LIBRARY_PATH=/usr/lib/

# ZOXIDE #
eval "$(zoxide init zsh)"

# FZF #
# set up fzf key bindings and fuzzy completion
eval "$(fzf --zsh)"

# use fd instead of fzf
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

_fzf_compgen_path() {
    fd --hidden --exclude .git . "$1"
}

# use fd to generate the list for directory completion
_fzf_compgen_dir() {
    fd --type=d --hidden --exclude .git . "$1"
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# PATH #
export PATH="$HOME/.deno/bin:$PATH" # deno
export PATH="$HOME/.local/bin:$PATH" # local
export PATH="$HOME/.cargo/bin:$PATH" # cargo
export PATH="/usr/bin/vendor_perl:$PATH" # po4a
export PATH="/opt/clion-2024.2.3/bin:$PATH" # clion

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
