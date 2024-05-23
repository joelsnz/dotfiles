--> shortcuts menu plugin <--
return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	config = function()
		local whichkey = require("which-key")

		vim.o.timeout = true
		vim.o.timeoutlen = 300

		whichkey.setup({})

		whichkey.register({
			s = { name = "Splits" },
			l = { name = "LaTeX" },
			t = { name = "Tabs" },
			r = { name = "Redo" },
			e = { name = "Explorer" },
			c = { name = "Actions" },
			w = { name = "Sessions" },
			m = { name = "Format" },
			f = { name = "Find" },
			n = { name = "Clear" },
			x = { name = "Trouble" },
			p = { name = "Swap" },
		}, { prefix = "<leader>" })
	end,
}
