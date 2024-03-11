-- status line plugin --

return {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local lualine = require("lualine")

        lualine.setup({
            options = {
                theme = "onedark",
                section_separators = {left = '', right = ''},
                component_separators = {left = '|', right = '|'}
            }
        })
    end
}
