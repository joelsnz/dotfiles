--> general purpose linters
return {
    'mfussenegger/nvim-lint',
    event = 'BufWritePost',
    config = function ()
        --> define a table of linters for each filetype (not extension)
        local lint = require('lint')

        lint.linters_by_ft = {
            python = {
                'flake8',
                'mypy',
                'pylint'
            }
        }

        --> automatically run linters after saving
        vim.api.nvim_create_autocmd({ "BufWritePost" }, {
            pattern = { "*.py" },
            callback = function ()
                lint.try_lint()
            end
        })
    end
}
