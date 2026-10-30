return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  lazy = false,
  opts = {
    "javascript",
    "html",
    "css",
    "qmljs",
    "python",
    "lua",
    "xml",
    "c",
    "cpp"
  },
  config = function(_, opts)
    require("nvim-treesitter").install(opts)

    vim.api.nvim_create_autocmd("FileType", {
      pattern = {
        "javascript",
        "html",
        "css",
        "qmljs",
        "python",
        "lua",
        "xml",
        "c",
        "cpp"
      },
      callback = function()
        vim.treesitter.start()
      end
    })
  end
}
