return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  lazy = false,
  opts = {
    "javascript",
    "html",
    "css"
  },
  config = function(_, opts)
    require("nvim-treesitter").install(opts)

    vim.api.nvim_create_autocmd("FileType", {
      pattern = {
        "javascript",
        "html",
        "css"
      },
      callback = function()
        vim.treesitter.start()
      end
    })
  end
}
