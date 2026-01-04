return {
  "williamboman/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "clangd",
      "lua_ls"
    }
  },
  dependencies = {
    {
      "williamboman/mason.nvim",
      opts = {
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
          },
        },
      },
    },
    "neovim/nvim-lspconfig"
  }
}
