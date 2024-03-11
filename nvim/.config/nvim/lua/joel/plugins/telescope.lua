-- fuzzy finder plugin --

return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "BurntSushi/ripgrep",
        "sharkdp/fd",
        -- "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons"
    },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")

        telescope.setup({})

        -- keymaps --
        local keymap = vim.keymap

        keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>") --> Fuzzy find files in cwd
        keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>") --> Fuzzy find recent files
        keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>") --> Find string in cwd
        keymap.set("n", "<leader>ft", "<cmd>Telescope treesitter<CR>") --> List function names and variables
        keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>") --> List buffers
    end
}
