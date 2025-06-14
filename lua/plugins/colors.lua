return {
    {
        "Rigellute/rigel",

        config = function()
            -- color = color or "superman"
            Color = Color or "rigel"
            -- color = color or "neosolarized"
            vim.cmd.colorscheme(Color)
            vim.opt.cursorline = true
            vim.api.nvim_set_hl(0, "normal", { bg = "#000f1c" })
            -- vim.api.nvim_set_hl(0, "normalfloat", { bg = "none"})
            -- vim.api.nvim_set_hl(0, "endofbuffer", { bg = "none"})

            vim.api.nvim_set_hl(0, "cursorline", { bg = "#0c2436" })
            -- vim.api.nvim_set_hl(0, "linenrabove", { fg = "#00ff00" })j
            vim.api.nvim_set_hl(0, "linenrabove", { fg = "#787878" })
            -- vim.api.nvim_set_hl(0, "endofbuffer", { fg = "#00cdff" })
            -- vim.api.nvim_set_hl(0, "cursorlinenr", { fg = "#ff8e00", bold = true })
            vim.api.nvim_set_hl(0, "cursorlinenr", { bold = true })
            -- vim.api.nvim_set_hl(0, "linenrbelow", { fg = "#00ff00" })
            vim.api.nvim_set_hl(0, "linenrbelow", { fg = "#787878" })
            vim.api.nvim_set_hl(0, "comment", { fg = "#018281" })
        end,
    },
}

--#004040
--#009e95
-- #00aea1
-- #009e95
-- #018281
