call plug#begin('~/.vim/plugged') " vim-plug

Plug 'dense-analysis/ale' " linter

call plug#end()

let g:ale_linters = { 'c': ['clang', 'gcc'], 'cpp': ['clang', 'g++'] }
let g:ale_fix_on_save = 1
let g:ale_fixers = { 'c': ['clang-format'] }
