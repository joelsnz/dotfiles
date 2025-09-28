local set = vim.opt

set.number = true -- line numbers
set.relativenumber = true -- 0 always on active line

set.tabstop = 2 -- spaces for tabs
set.shiftwidth = 2 -- spaces for indent
set.expandtab = true -- expand tab to spaces
set.autoindent = true -- copy indent to new line

set.clipboard:append("unnamedplus") -- use system clipboard by default

set.splitright = true -- split vertical window to the right
set.splitbelow = true -- split horizontal window to the bottom

set.swapfile = false -- turn off swapfile

vim.g.vimtex_view_method = 'okular'
