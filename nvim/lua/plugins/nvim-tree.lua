-- ~/.config/nvim/lua/plugins/nvim-tree.lua

return {
  'nvim-tree/nvim-tree.lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('nvim-tree').setup {
      sort = { sorter = 'case_sensitive' },
      view = { width = 30 },
      renderer = { group_empty = true },
      filters = { dotfiles = false },
      git = { enable = true, ignore = false },
    }
    vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = 'Toggle file [E]xplorer' })
    vim.keymap.set('n', '<leader>tf', ':NvimTreeFindFile<CR>', { desc = '[T]ree [F]ind current file' })
    vim.keymap.set('n', '<leader>tc', ':NvimTreeCollapse<CR>', { desc = '[T]ree [C]ollapse' })
  end,
}