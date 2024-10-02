return {
    -- Colorscheme
    "Rigellute/rigel",

    -- Telescope
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = {
            'nvim-lua/plenary.nvim',
            "debugloop/telescope-undo.nvim",
        }
    },

    -- Harpoon
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" }
    },

    -- LSP
    { 'VonHeikemen/lsp-zero.nvim',        branch = 'v4.x' },
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },


    -- Treesitter
    { "nvim-treesitter/nvim-treesitter",  build = ":TSUpdate" },

    -- Lualine
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },

    -- Autopairs
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
    },

    -- Autotag
    { "windwp/nvim-ts-autotag" },

    { "tpope/vim-fugitive" },


    -- In Development --

    -- autofill
    {"jett65/autofill"}
}
