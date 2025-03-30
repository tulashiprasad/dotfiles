-- ~/.config/nvim/lua/plugins/misc.lua

return {
  { 'windwp/nvim-autopairs', event = 'InsertEnter', config = true },
  { 'ThePrimeagen/vim-be-good' },
  { 'lewis6991/gitsigns.nvim', config = function()
    require('gitsigns').setup {}
    vim.keymap.set('n', '<leader>gp', ':Gitsigns preview_hunk<CR>', { desc = 'preview hunk' })
  end },
  { 'sindrets/diffview.nvim' },
  { 'folke/which-key.nvim', event = 'VimEnter', opts = {
    delay = 0,
    icons = { mappings = vim.g.have_nerd_font, keys = vim.g.have_nerd_font and {} or {
      Up = '<Up> ', Down = '<Down> ', Left = '<Left> ', Right = '<Right> ',
      C = '<C-…> ', M = '<M-…> ', D = '<D-…> ', S = '<S-…> ',
      CR = '<CR> ', Esc = '<Esc> ', ScrollWheelDown = '<ScrollWheelDown> ',
      ScrollWheelUp = '<ScrollWheelUp> ', NL = '<NL> ', BS = '<BS> ',
      Space = '<Space> ', Tab = '<Tab> ', F1 = '<F1>', F2 = '<F2>',
      F3 = '<F3>', F4 = '<F4>', F5 = '<F5>', F6 = '<F6>', F7 = '<F7>',
      F8 = '<F8>', F9 = '<F9>', F10 = '<F10>', F11 = '<F11>', F12 = '<F12>',
    } },
    spec = {
      { '<leader>c', group = '[C]ode', mode = { 'n', 'x' } },
      { '<leader>d', group = '[D]ocument' },
      { '<leader>r', group = '[R]ename' },
      { '<leader>s', group = '[S]earch' },
      { '<leader>w', group = '[W]orkspace' },
      { '<leader>t', group = '[T]oggle' },
      { '<leader>g', group = '[G]it' },
    },
  } },
  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },
}