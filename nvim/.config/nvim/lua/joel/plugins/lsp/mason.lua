--> LSP, DAP, linters and formatters manager <--
return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		--> enable mason and configure icons <--
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			ensure_installed = {
				"lua_ls",
				"pyright",
				"marksman",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"stylua", --> lua formatter
				"isort", --> python formatter
				"black", --> python formatter
				"pylint",
			},
		})
	end,
}
