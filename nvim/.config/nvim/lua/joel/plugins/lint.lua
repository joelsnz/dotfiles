--> general purpose linters <--
return {
	"mfussenegger/nvim-lint",
	event = "BufWritePost",
	config = function()
		--> define a table of linters for each filetype (not extension) <--
		local lint = require("lint")

		lint.linters_by_ft = {
			python = {
				"flake8",
				"mypy",
				"pylint",
			},
		}

		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

		--> automatically run linters after saving
		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
			group = lint_augroup,
			callback = function()
				lint.try_lint()
			end,
		})

		vim.keymap.set("n", "<leader>l", function()
			lint.try_lint()
		end, { desc = "Trigger linting for current file" })
	end,
}
