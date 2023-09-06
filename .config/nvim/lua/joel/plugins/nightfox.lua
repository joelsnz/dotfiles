-- colortheme --

return {
  "EdenEast/nightfox.nvim",
  config = function()
    local nightfox = require("nightfox")

    nightfox.setup({
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
