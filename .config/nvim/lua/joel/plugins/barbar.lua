-- tabs for nvim --

return {
  "romgrk/barbar.nvim",
  dependencies = {
    "lewis6991/gitsigns.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  init = function() vim.g.barbar_auto_setup = false end,
  config = function()
    opts = {
	    animation = true,
	    tabpages = true,
	    clickable = true,
    }
  end
}
