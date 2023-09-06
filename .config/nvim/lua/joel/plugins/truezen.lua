-- distraction-free writing modes --

return {
	"pocco81/true-zen.nvim",
	config = function()
    local true_zen = require("true-zen")

		true_zen.setup ({
			modes = {
				ataraxis = {
					padding = {
						left = 30,
						right = 30,
					},
				},
			},
			integrations = {
				lualine = true,
			},
		})

    -- set keymaps --
    local keymap = vim.keymap --> for conciseness

    keymap.set("n", "<leader>za", "<cmd>TZAtaraxis<cr>", {})
    keymap.set("n", "<leader>zm", "<cmd>TZMinimalist<CR>", {})
	end,
}
