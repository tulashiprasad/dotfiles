-- ~/.config/nvim/lua/plugins/colorscheme.lua

return {
  'olimorris/onedarkpro.nvim',
  name = 'onedarkpro',
  priority = 1000,
  config = function()
    vim.cmd.colorscheme 'onedark'
  end,
}