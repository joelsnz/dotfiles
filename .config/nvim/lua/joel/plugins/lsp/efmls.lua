return {
  'creativenull/efmls-configs-nvim',
  version = 'v1.x.x', -- version is optional, but recommended
  dependencies = { 'neovim/nvim-lspconfig' },
  config = function()
    -- register linters and formatters per language --
    local mypy = require('efmls-configs.linters.mypy') --> python linter
    local ruff = require('efmls-configs.formatters.ruff') --> python formatter
    local stylua = require('efmls-configs.formatters.stylua') --> lua formatter

    local languages = {
      lua = { stylua },
      python = { mypy, ruff }
    }

    local efmls_config = {
      filetypes = vim.tbl_keys(languages),
      settings = {
        rootMarkers = { '.git/' },
        languages = languages,
      },
      init_options = {
        documentFormatting = true,
        documentRangeFormatting = true,
      },
    }
  end
}
