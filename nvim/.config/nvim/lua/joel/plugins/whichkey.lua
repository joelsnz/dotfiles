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
			-- TODO: Write down prefix descriptions
			s = { name = "Splits" },
			t = { name = "Tabs" },
			r = { name = "LSP" },
			c = { name = "Code Actions" },
			w = { name = "Sessions" },
			m = { name = "Format" },
			e = { name = "Explorer" },
			f = { name = "Find" },
			n = { name = "Clear" },
		}, { prefix = "<leader>" })
	end,
}
