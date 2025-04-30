let mapleader = " "

" splits
nnoremap <leader>sv <C-w>v " vertical split
nnoremap <leader>sh <C-w>s " horizontal split
nnoremap <leader>se <C-w>= " make splits equal
nnoremap <leader>sx :close<CR> " close split

" movement between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
  
" tabs
nnoremap <leader>to :tabnew<CR> " new tab
nnoremap <leader>tx :tabclose<CR> " close tab
nnoremap <leader>tn :tabn<CR> " go to next tab
nnoremap <leader>tp :tabp<CR> " go to prev tab

nnoremap <leader>ff :CtrlP<CR>
