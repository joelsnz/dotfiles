return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		local toggleterm = require("toggleterm")

		toggleterm.setup({
			direction = "float",
		})

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<C-\\>", "<cmd>ToggleTerm<CR>", { desc = "Toggle Terminal" }) -- toggle terminal
	end,
}
