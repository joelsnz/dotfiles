return {
  'dense-analysis/ale',
  config = function()
    local g = vim.g

    g.ale_linters = {
      c = {'clangd', 'gcc'},
      lua = {'lua_language_server'}
    }
  end
}
