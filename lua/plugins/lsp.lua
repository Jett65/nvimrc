return {
    {
        "mason-org/mason.nvim",
        opts = {},

        config = function()
            require("mason").setup({})
        end,
    },

    {
        "mason-org/mason-lspconfig.nvim",
        opts = {},
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },

        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "clangd" },
            })
        end,
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            local lspconfig = require("lspconfig")

            lspconfig.lua_ls.setup({
                capabilities = capabilities,
            })
            lspconfig.clangd.setup({
                capabilities = capabilities,
            })

            vim.keymap.set({ "n" }, "<F2>", vim.lsp.buf.rename, {})
            vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})
            vim.api.nvim_set_keymap(
                "n",
                "gd",
                "<cmd>lua vim.lsp.buf.definition()<CR>",
                { noremap = true, silent = true }
            )
        end,
    },
}
