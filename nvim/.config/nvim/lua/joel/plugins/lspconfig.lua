-- LSP support --
return {
    'neovim/nvim-lspconfig',
    event = 'VeryLazy',
    dependencies = {
        --> LSP management
        { 'williamboman/mason.nvim' },
        { 'williamboman/mason-lspconfig.nvim' },
        { 'whoIsSethDaniel/mason-tool-installer.nvim' }, --> auto-install LSPs, linters, formatters, debuggers
        { 'j-hui/fidget.nvim', opts = {} }, --> status updates
        { 'folke/neodev.nvim' } --> additional lua configuration
    },
    config = function()
        local mason = require('mason')
        local masonlspconfig = require('mason-lspconfig')
        local masontoolinstaller = require('mason-tool-installer')

        mason.setup({})

        masonlspconfig.setup({
            ensure_installed = {
                'lua_ls',
                'pyright',
            }
        })

        masontoolinstaller.setup({
            ensure_installed = {
                'black',
                'debugpy',
                'flake8',
                'mypy',
                'pylint'
            }
        })

        local lspconfig = require('lspconfig')
        local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
        local lsp_attach = function(client, bufnr)
            --> create keybindings here
        end

        masonlspconfig.setup_handlers({
            function(server_name)
                lspconfig[server_name].setup({
                    on_attach = lsp_attach,
                    capabilities = lsp_capabilites,
                    handlers = {
                        ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = 'rounded' }),
                        ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = 'rounded' })
                    }
                })
            end
        })

        --> LSP settings <--

        --> lua
        lspconfig.lua_ls.setup {
            settings = {
                Lua = {
                    diagnostics = {
                        --> get the language server to recognize the 'vim' global
                        globals = { 'vim' }
                    }
                }
            }
        }

        --> keymaps <--
        local keymap = vim.keymap

        keymap.set('n', '<leader>gg', '<cmd>lua vim.lsp.buf.hover()<CR>')
        keymap.set('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
        keymap.set('n', '<leader>gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
        keymap.set('n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
        keymap.set('n', '<leader>gt', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
        keymap.set('n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<CR>')
        keymap.set('n', '<leader>gs', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
        keymap.set('n', '<leader>gR', '<cmd>lua vim.lsp.buf.rename()<CR>')
        keymap.set('n', '<leader>gf', '<cmd>lua vim.lsp.buf.format({async = true})<CR>')
        keymap.set('v', '<leader>gf', '<cmd>lua vim.lsp.buf.format({async = true})<CR>')
        keymap.set('n', '<leader>ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')
        keymap.set('n', '<leader>gl', '<cmd>lua vim.diagnostic.open_float()<CR>')
        keymap.set('n', '<leader>gp', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
        keymap.set('n', '<leader>gn', '<cmd>lua vim.diagnostic.goto_next()<CR>')
        keymap.set('n', '<leader>gS', '<cmd>lua vim.lsp.buf.document_symbol()<CR>')
        keymap.set('i', '<C-Space>', '<cmd>lua vim.lsp.buf.completion()<CR>')
    end
}
