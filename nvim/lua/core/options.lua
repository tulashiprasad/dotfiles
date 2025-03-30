-- ~/.config/nvim/lua/core/options.lua

-- Make line numbers default
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable mouse mode
vim.opt.mouse = 'a'

-- Hide mode in command line (shown in statusline)
vim.opt.showmode = false

-- Sync clipboard with OS
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on
vim.opt.signcolumn = 'yes'

-- Decrease update and timeout times
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Split behavior
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Display whitespace characters
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Live preview for substitutions
vim.opt.inccommand = 'split'

-- Highlight current line
vim.opt.cursorline = true

-- Keep lines above/below cursor
vim.opt.scrolloff = 10