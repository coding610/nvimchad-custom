
-- Popup diagnostic box
vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', { silent = true })


local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

local lspconfig = require('lspconfig')


local servers = { 'pyright', 'lua_ls', 'clangd', 'html', 'asm_lsp' }

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        capabilities = capabilities,
    }
end


lspconfig['rust_analyzer'].setup({
    on_attach=on_attach,
    settings = {
        ["rust-analyzer"] = {
            imports = {
                granularity = {
                    group = "module",
                },
                prefix = "self",
            },
            cargo = {
                buildScripts = {
                    enable = true,
                },
            },
            procMacro = {
                enable = true,
            },
            diagnostics = {
                experimental = {
                    enable = true
                }
            }
        },
    }
})
