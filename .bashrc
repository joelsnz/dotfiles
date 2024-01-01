#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias grep='grep --color=auto'
alias cat='bat --style=plain --paging=never'
alias ls='exa --group-directories-first'
alias tree='exa -T'
alias dotfiles="git --git-dir $HOME/.dotfiles/ --work-tree $HOME"

# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
. ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[33m\]$(__git_ps1 "(%s)")\[\033[37m\]\$\[\033[00m\] '

[ -f ~/.fzf.bash ] && source ~/.fzf.bash


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/joel/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/joel/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/joel/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/joel/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

