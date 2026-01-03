return {
  'dense-analysis/ale',
  config = function()
    local g = vim.g

    g.ale_linters = {
      c = {'clangd', 'gcc'},
      cpp = {'g++'},
      lua = {'lua_language_server'}
    }
  end
}
