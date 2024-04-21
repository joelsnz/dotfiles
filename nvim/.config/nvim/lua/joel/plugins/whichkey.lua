--> shortcuts menu plugin <--
return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	config = function()
		local whichkey = require("which-key")

		vim.o.timeout = true
		vim.o.timeoutlen = 300

		whichkey.setup({})

		whichkey.register({})
	end,
}
