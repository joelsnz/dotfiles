-- color highlighter --

return {
    "norcalli/nvim-colorizer.lua",
    config = function()
        colorizer = require("colorizer")

        colorizer.setup({
            '*',
        })
    end
}
