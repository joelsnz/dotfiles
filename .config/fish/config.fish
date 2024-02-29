set fish_greeting ""

# Aliases

alias grep "grep --color=auto"
alias cat "bat --style=plain --paging=never"
alias ls "exa --group-directories-first"
alias tree "exa -T"
alias dotfiles "git --git-dir $HOME/.dotfiles/ --work-tree $HOME"

# Prompt

starship init fish | source

pyenv init - | source

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/joel/.config/miniconda3/bin/conda
    eval /home/joel/.config/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/joel/.config/miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/joel/.config/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/joel/.config/miniconda3/bin" $PATH
    end
end
# <<< conda initialize <<<

zoxide init fish | source
