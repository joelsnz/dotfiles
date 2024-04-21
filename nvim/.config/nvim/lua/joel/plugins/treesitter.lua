--> parser generator tool / syntax highlighting <--

return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
		"windwp/nvim-ts-autotag",
	},
	config = function()
		local treesitter = require("nvim-treesitter.configs")
		local ts_install = require("nvim-treesitter.install")

		if jit.os == "Linux" then
			ts_install.prefer_git = true
		else
			ts_install.prefer_git = false
			ts_install.compilers = { "clang" }
		end

		treesitter.setup({
			--> configure treesitter modules <--
			highlight = { enable = true }, --> enable highlighting
			indent = { enable = true }, --> enable indentation
			autotag = { enable = true },
			ensure_installed = { --> ensure these parsers are installed
				"c",
				"cpp",
				"python",
				"lua",
			},
			auto_install = true, --> auto-install above parsers
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
		})
	end,
}
