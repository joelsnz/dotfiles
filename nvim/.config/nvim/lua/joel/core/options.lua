vim.cmd("let g:netrw_liststyle = 3")

local set = vim.opt

set.relativenumber = true
set.number = true

--> tabs & indentation <--
set.tabstop = 2 --> 2 spaces for tabs (prettier default)
set.shiftwidth = 2 --> 2 spaces for indent width
set.expandtab = true --> expand tab to spaces
set.autoindent = true --> copy indent from current line when starting new one

set.wrap = false

--> search settings <--
set.ignorecase = true --> ignore case when searching
set.smartcase = true --> if you include mixed case in your search, assumes you want case-sensitive

set.cursorline = true

--> turn on termguicolors for tokyonight colorscheme to work <--
set.termguicolors = true
set.background = "dark" --> colorschemes that can ba light or dark will be made dark
set.signcolumn = "yes" --> show sign column so that text doesn't shift

--> backspace <--
set.backspace = "indent,eol,start" --> allow backspace on indent, end of line or insert mode start position

--> clipboard <--
set.clipboard:append("unnamedplus") --> use system clipboard as default register

--> split windows <--
set.splitright = true --> split vertical window to the right
set.splitbelow = true --> split horizontal window to the bottom

--> turn off swapfile <--
set.swapfile = false
