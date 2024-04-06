local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

local lspconfig = require('lspconfig')


local servers = { 'rust_analyzer', 'pyright', 'lua_ls', 'clangd', 'asm_lsp', 'gopls', 'emmet_language_server', 'cssls', 'html' }

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        capabilities = capabilities,
    }
end
