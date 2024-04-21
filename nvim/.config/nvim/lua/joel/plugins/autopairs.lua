--> auto-pairs plugin <--
return {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/nvim-cmp",
	},
	config = function()
		local autopairs = require("nvim-autopairs")

		autopairs.setup({
			check_ts = true, --> enable treesitter
			ts_config = {
				lua = { "string" }, --> don't add pairs in lua string treesitter nodes
			},
		})
		local cmp_autopairs = require("nvim-autopairs.completion.cmp") --> completion functionality
		local cmp = require("cmp") --> completions plugin (nvim-cmp)

		--> make autopairs and completion work together <--
		cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
	end,
}
