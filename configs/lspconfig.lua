local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)


local lspconfig = require("lspconfig")
require("mason-lspconfig").setup_handlers {
    function(server_name)
        lspconfig[server_name].setup {}
    end
}


--[[
local servers = { 'rust_analyzer', 'pyright', 'lua_ls', 'asm_lsp', 'gopls', 'emmet_language_server', 'cssls', 'html', 'glsl_analyzer', 'csharp-language-server' }

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        capabilities = capabilities,
    }
end

lspconfig['clangd'].setup {
    capabilities = capabilities,
}
]]--
