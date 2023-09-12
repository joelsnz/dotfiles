-- tabs for nvim --

return {
  "romgrk/barbar.nvim",
  dependencies = {
    "lewis6991/gitsigns.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  init = function() vim.g.barbar_auto_setup = false end,
  config = function()
    local barbar = require("barbar")

    barbar.setup ({
	    animation = true,
	    tabpages = true,
	    clickable = true,
    })

    -- set keymaps --
    local keymap = vim.keymap --> for conciseness
    
    keymap.set("n", "<A-,>", "<cmd>BufferPrevious<CR>",{ desc = "Go to previous buffer" })
    keymap.set("n", "<A-.>", "<cmd>BufferNext<CR>",{ desc = "Go to next buffer" })
    keymap.set("n", "<A-<>", "<cmd>BufferMovePrevious<CR>",{ desc = "Move to previous buffer" })
    keymap.set("n", "<A->>", "<cmd>BufferMoveNext<CR>",{ desc = "Move to next buffer" })
    keymap.set("n", "<A-1>", "<cmd>BufferGoto 1<CR>",{ desc = "Go to buffer Nº1" })
    keymap.set("n", "<A-2>", "<cmd>BufferGoto 2<CR>",{ desc = "Go to buffer Nº2" })
    keymap.set("n", "<A-3>", "<cmd>BufferGoto 3<CR>",{ desc = "Go to buffer Nº3" })
    keymap.set("n", "<A-4>", "<cmd>BufferGoto 4<CR>",{ desc = "Go to buffer Nº4" })
    keymap.set("n", "<A-5>", "<cmd>BufferGoto 5<CR>",{ desc = "Go to buffer Nº5" })
    keymap.set("n", "<A-6>", "<cmd>BufferGoto 6<CR>",{ desc = "Go to buffer Nº6" })
    keymap.set("n", "<A-7>", "<cmd>BufferGoto 7<CR>",{ desc = "Go to buffer Nº7" })
    keymap.set("n", "<A-8>", "<cmd>BufferGoto 8<CR>",{ desc = "Go to number Nº8" })
    keymap.set("n", "<A-9>", "<cmd>BufferGoto 9<CR>",{ desc = "Go to number Nº9" })
    keymap.set("n", "<A-0>", "<cmd>BufferLast<CR>",{ desc = "Go to last buffer" })
    keymap.set("n", "<A-c>", "<cmd>BufferClose<CR>",{ desc = "Close actual buffer" })
    keymap.set("n", "<A-p>", "<cmd>BufferPick<CR>",{ desc = " " })
    keymap.set("n", "<leader>bb", "<cmd>BufferOrderByBufferName<CR>",{ desc = "Autodescriptive" })
    keymap.set("n", "<leader>bd", "<cmd>BufferOrderByDirectory<CR>",{ desc = "Autodescriptive" })
    keymap.set("n", "<leader>bl", "<cmd>BufferOrderByLanguage<CR>",{ desc = "Autodescriptive" })
  end,
}
