-- colortheme --
return { 
  "EdenEast/nightfox.nvim",
  config = function()
    require("nightfox").setup({
      options = {
        transparent = true,
        styles = {
          comments = 'italic',
          functions = 'italic',
        }
      },
    })
    vim.cmd("colorscheme nordfox")
  end
}
