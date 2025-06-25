-- syntax highlighting
return {
  'nvim-treesitter/nvim-treesitter',
  build = ":TSUpdate",
  config = function()
    local ts = require("nvim-treesitter.configs")
    ts.setup({
      ensure_installed = {'lua', 'c', 'cmake'},
      highlight = { enable = true },
      indent = { enable = true }
    })
  end
}
