--> python formatter

return {
    'fisadev/vim-isort',
    ft = 'python',
    config = function ()
        --> disable default key binding
        vim.g.vim_isort_map = ''

        --> automatically format file buffer when saving
        vim.api.nvim_create_autocmd({ "BufWritePre" }, {
            pattern = "*.py",
            callback = function ()
                vim.cmd("Isort")
            end
        })
    end
}
