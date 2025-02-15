function Map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
       options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

Map('n', '<C-->', '<C-w>-')
Map('n', '<C-+>', '<C-w>+')
Map('n', '<C-<>', '<C-w><')
Map('n', '<C->>', '<C-w>>')

Map('n', '<Up>', ':echo \"use hjlk\"<CR>')
Map('n', '<Down>', ':echo \"use hjlk\"<CR>')
Map('n', '<Left>', ':echo \"use hjlk\"<CR>')
Map('n', '<Right>', ':echo \"use hjlk\"<CR>')
Map('i', '<Up>', '<esc>:echo \"use hjlk\"<CR>')
Map('i', '<Down>', '<esc>:echo \"use hjlk\"<CR>')
Map('i', '<Left>', '<esc>:echo \"use hjlk\"<CR>')
Map('i', '<Right>', '<esc>:echo \"use hjlk\"<CR>')
Map('v', '<Up>', '<esc>:echo \"use hjlk\"<CR>')
Map('v', '<Down>', '<esc>:echo \"use hjlk\"<CR>')
Map('v', '<Left>', '<esc>:echo \"use hjlk\"<CR>')
Map('v', '<Right>', '<esc>:echo \"use hjlk\"<CR>')

Map('n', "<leader>o", ":wqa<CR>", {silent=true})
Map('n', "<leader>pv", ":NvimTreeToggle<CR>", {silent=true})
Map('n', "<leader><leader>", ":so<CR>", {silent=true})
Map('n', "<leader>pf", ":Telescope find_files<CR>", {silent=true})
Map('n', "<leader>pdd", ":lua vim.diagnostic.disable()<CR>", { silent=true, desc="disable diagnostics"})
Map('n', "<leader>pde", ":lua vim.diagnostic.enable()<CR>", { silent=true, desc="enable diagnostics" })
Map('n', "<leader>ge", ":lua lsp.goto_", {silent=true})
Map('n', "<leader>s", "v$h", {silent=true})
Map('n', "<leader>y", ":redo<CR>", {silent=true})
Map('n', "<leader>xd", ":%!xxd<CR>", {silent=true})
Map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
Map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
Map("n", "dd", "Vd", { silent = true })
Map("n", "<leader>B", ":hi Normal guibg=NONE ctermbg=NONE<CR>", { silent = true, desc = "remove bg color" })
Map("n", "<leader>e", ":lua vim.diagnostic.open_float()<CR>", { silent = true, desc = "popup diagnostic" })
Map("n", "<leader>E", ":lua vim.lsp.buf.hover() <CR>", { silent = true, desc = "popup description" })

Map("n", "<leader>S", ":DBUIToggle<CR>", { silent = true, desc = "[S]QL" })

Map("n", "m", ":vsplit | term make all run<CR>", { silent = true })
Map("n", "M", ":horizontal split | term make all run<CR>", { silent = true })
Map("n", "<leader>mr", ":vsplit | term ./bin/main<CR>", { silent = true })
Map("n", "<leader>Mr", ":horizontal split | term ./bin/main<CR>", { silent = true })
Map("n", "<leader>mg", ":vsplit | term go run .<CR>", { silent = true })
Map("n", "<leader>Mg", ":horizontal split | term go run .<CR>", { silent = true })
Map("n", "<C-g>", ":vsplit | term go run .<CR>", { silent = true })

Map("n", "<leader>ce", ":vsplit | edit ~/.config/nvim/lua/custom/init.lua<CR>", { silent = true, desc = "edit main config" })

Map("n", "T", ":lua vim.diagnostic.goto_next()<CR>", { silent = true, desc = "goto next error" })
Map("n", "<C-f>", "V/\\%V", { silent = true, desc = "search line" })

-- Terminal Movements
Map("t", "<C-h>", "<C-\\><C-n><C-w>h")
Map("t", "<C-l>", "<C-\\><C-n><C-w>l")
Map("t", "<C-j>", "<C-\\><C-n><C-w>j")
Map("t", "<C-k>", "<C-\\><C-n><C-w>k")

local set = vim.opt
local sot = vim.o
set.guicursor = ""
set.number = true
set.relativenumber = true
set.wrap = false
sot.scrolloff = 10

sot.foldenable = true
set.foldmethod = "indent"
sot.foldlevel = 99
sot.foldlevelstart = 99
set.mousemodel="extend"

set.expandtab = true
set.tabstop=4
set.shiftwidth = 4
set.softtabstop = -1
set.smarttab = true

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
