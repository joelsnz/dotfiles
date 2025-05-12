call plug#begin('~/.vim/plugged') " vim-plug

Plug 'junegunn/fzf' " fuzzy finder
Plug 'junegunn/fzf.vim'

let $FZF_DEFAULT_COMMAND = 'fd --type f --hidden --exclude .git'

Plug 'dense-analysis/ale' " linter

Plug 'neoclide/coc.nvim' " completion

call plug#end()

let g:ale_linters = {
               \   'c': ['clang', 'gcc'],
               \   'cpp': ['clang', 'g++'],
               \}
let g:ale_fix_on_save = 1
let g:ale_fixers = {
               \   'c': ['clang-format'],
               \}
