-- shortcuts menu plugin
return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	config = function()
		local whichkey = require("which-key")

		vim.o.timeout = true
		vim.o.timeoutlen = 300

		whichkey.setup({})

		whichkey.add({
			{ "<leader>c", group = "Actions" },
			{ "<leader>e", group = "Explorer" },
			{ "<leader>f", group = "Find" },
			{ "<leader>l", group = "LaTeX" },
			{ "<leader>m", group = "Format" },
			{ "<leader>n", group = "Clear" },
			{ "<leader>p", group = "Swap" },
			{ "<leader>r", group = "Redo" },
			{ "<leader>s", group = "Splits" },
			{ "<leader>t", group = "Tabs" },
			{ "<leader>w", group = "Sessions" },
			{ "<leader>x", group = "Trouble" },
		})
	end,
}
