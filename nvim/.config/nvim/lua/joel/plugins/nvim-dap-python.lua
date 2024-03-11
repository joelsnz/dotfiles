return {
    'mfussenegger/nvim-dap-python',
    ft = 'python',
    dependencies = {
        'mfussenegger/nvim-dap'
    },
    config = function ()
        local dapython = require('dap-python')
        local path = '~/.virtualenvs/debugpy/bin/python'

        dapython.setup(path)

        --> keymaps <--
        local keymap = vim.keymap

        keymap.set("n", '<leader>tc', function()
            if vim.bo.filetype == 'python' then
                require('dap-python').test_class();
            end
        end)
    end
}
