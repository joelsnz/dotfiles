-- set leader key to space --
vim.g.mapleader = " "

local keymap = vim.keymap --> for conciseness

-- general keymaps --
keymap.set("n", "<leader>wq", ":wq<CR>") --> save and quit
keymap.set("n", "<leader>qq", ":q!<CR>") --> quit without saving
keymap.set("n", "<leader>ww", ":w<CR>") --> save

-- window management --
keymap.set("n", "<leader>sv", "<C-w>v") --> split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") --> split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") --> make split windows equal width and height
keymap.set("n", "<leader>sx", "<cmd>close<CR>") --> close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>") --> Open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>") --> Close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>") --> Go to new tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>") --> Go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew<CR>") --> Move current buffer to new tab
