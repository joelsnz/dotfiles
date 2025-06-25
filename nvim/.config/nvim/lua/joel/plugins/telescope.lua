-- fuzzy finder
return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.6',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find files in cwd" })
    vim.keymap.set('n', '<leader>fs', builtin.live_grep, { desc = "Find string in cwd" })
    vim.keymap.set('n', '<leader>fc', builtin.grep_string, { desc = "Find string under cursor in cwd" })
  end
}
