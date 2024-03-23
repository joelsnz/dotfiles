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
                    functions = 'bold',
                    keywords = 'bold',
                    conditionals = 'bold',
                    types = 'bold'
                }
            },
        })
        vim.cmd("colorscheme duskfox")
    end
}
