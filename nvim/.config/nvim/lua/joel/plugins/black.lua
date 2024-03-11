--> python formatter <--
return {
    'psf/black',
    ft = 'python',
    config = function()
        --> automatically format file buffer when saving
        vim.api.nvim_create_autocmd({ "BufWritePre" }, {
            pattern = "*.py",
            callback = function()
            vim.cmd("Black")
            end,
        })
    end
}
