return require("packer").startup(function()
	use("wbthomason/packer.nvim") --> packer plugin manager
	use("Pocco81/true-zen.nvim")
	use("nvim-tree/nvim-web-devicons") --> enable icons
	use("norcalli/nvim-colorizer.lua") 
	use("nvim-lualine/lualine.nvim") --> a statusline written in lua 
end)
