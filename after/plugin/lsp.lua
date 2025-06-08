local lsp_zero = require('lsp-zero')

local lsp_attach = function(client, bufnr)
    local opts = { buffer = bufnr }
    lsp_zero.default_keymaps({buffer = bufnr})
end

vim.keymap.set('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>')

vim.diagnostic.config({
  severity_sort = true,
  float = {
    style = 'minimal',
    border = 'rounded',
    source = 'always',
    header = '',
    prefix = '',
  },
})

lsp_zero.extend_lspconfig({
    sign_text = {
        error = '✘',
        warn = '▲',
        hint = '⚑',
        info = '»',
    },
    lsp_attach = lsp_attach,
    capabilities = require('cmp_nvim_lsp').default_capabilities()
})

require('mason').setup({})
require('mason-lspconfig').setup({
    handlers = {
        function(server_name)
            require('lspconfig')[server_name].setup({})
        end,
    }
})

local cmp = require('cmp')

cmp.setup({
    sources = {
        { name = 'nvim_lsp' },
    },
    snippet = {
        expand = function(args)
            vim.snippet.expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
        ['<C-Space'] = cmp.mapping.complete(),
    }),
})
