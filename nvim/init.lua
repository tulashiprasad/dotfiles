-- ~/.config/nvim/init.lua

-- Set leader keys
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Disable netrw (used by nvim-tree)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Set Nerd Font flag
vim.g.have_nerd_font = false

-- Load core configurations
require('core.options')
require('core.keymaps')
require('core.autocmds')

-- Load plugin manager and plugins
require('plugins.lazy')