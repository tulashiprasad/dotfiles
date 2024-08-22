-- bootstrap lazy.nvim, LazyVim and your plugins
vim.diagnostic.config({
  virtual_text = false, -- Disable virtual text (inline text in the code)
  signs = false, -- Disable signs (gutter signs)
  underline = false, -- Disable underline
  update_in_insert = false, -- Don't show diagnostics in insert mode
  severity_sort = false, -- Disable sorting by severity
})
require("config.lazy")
-- Configure diagnostics to be disabled
