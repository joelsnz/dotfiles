-- statusline written in lua --

return {
  "nvim-lualine/lualine.nvim",
  dependencies = {"nvim-tree/nvim-web-devicons", config = true}, --> enable icons
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status")

    lualine.setup({
      options = {
        theme = "nord"
      },
      sections = {
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = "#f1ffff" },
          },
          { "encoding" },
          { "fileformat" },
          { "filetype" },
        },
      },
    })
  end
}
