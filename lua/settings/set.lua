vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

-- scrolling
vim.opt.scrolloff = 999
-- vim.opt.cursorline = true
--
-- vim.api.nvim_create_augroup('CenterCursor', { clear = true })
-- vim.api.nvim_create_autocmd('CursorMoved', {
--   group = 'CenterCursor',
--   pattern = '*',
--   command = 'normal! zz',
-- })

--

-- Diagnostics --
vim.diagnostic.config({
    virtual_text = true,
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "✘",
            [vim.diagnostic.severity.WARN] = "▲",
            [vim.diagnostic.severity.INFO] = "⚑",
            [vim.diagnostic.severity.HINT] = "»",
        },
    },
    underline = false,
    update_in_insert = true,
})

vim.opt.signcolumn = "yes"
vim.keymap.set({ "n" }, "gl", vim.diagnostic.open_float, {})

vim.diagnostic.config({
    severity_sort = true,
    float = {
        style = "minimal",
        border = "rounded",
        source = "always",
        header = "",
        prefix = "",
    },
})
--

vim.opt.updatetime = 50

vim.opt.guicursor = "n-v-c-i:blinkon100,i:ver100-Cursor"

--spell checking
vim.opt.spelllang = "en_us"
vim.opt.spell = true

vim.g.mapleader = " "
