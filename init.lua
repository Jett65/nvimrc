-- Fix Alacritty double-input bug by altering Neovim's TUI progressive enhancement
vim.api.nvim_create_autocmd("UIEnter", {
  callback = function()
    vim.fn.chansend(vim.v.stderr, "\x1b[>1u")
  end,
})

vim.g.nvim_dir_plugin = 1

require("settings")
require("config.lazy")

-- Colors --
