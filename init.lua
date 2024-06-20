function Map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
       options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


Map('n', "<leader>o", ":wqa<CR>", {silent=true})
Map('n', "<leader>pv", ":NvimTreeToggle<CR>", {silent=true})
Map('n', "<leader><leader>", ":so<CR>", {silent=true})
Map('n', "<leader>pf", ":Telescope find_files<CR>", {silent=true})
Map('n', "<leader>pdd", ":lua vim.diagnostic.disable()<CR>", {silent=true})
Map('n', "<leader>pde", ":lua vim.diagnostic.enable()<CR>", {silent=true})
Map('n', "<leader>ge", ":lua lsp.goto_", {silent=true})
Map('n', "<leader>s", "v$h", {silent=true})
Map('n', "<leader>y", ":redo<CR>", {silent=true})


vim.opt.guicursor = ""
local set = vim.opt
local sot = vim.o
set.number = true
set.relativenumber = true
set.wrap = false

sot.foldenable = true
set.foldmethod = "indent"
sot.foldlevel = 99
sot.foldlevelstart = 99
sot.foldcolumn = '1'

set.expandtab = true
set.tabstop=4
set.shiftwidth = 4
set.softtabstop = -1
set.smarttab = true
