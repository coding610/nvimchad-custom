local M = {}

M.dap = {
    plugin = true,
    n = {
        ["<leader>db"] = {
            "<cmd> DapToggleBreakpoint <CR>",
            "Add debugging breakpoint at line"
        },
        ["<leader>dr"] = {
            "<cmd> DapContinue <CR>",
            "Start or resume debugging"
        },
        ["<leader><Right>"] = {
            "<cmd> DapStepOver <CR>"
        },
        ["<leader><Up>"] = {
            "<cmd> DapStepInto <CR>"
        },
        ["<leader><Down>"] = {
            "<cmd> DapStepOut <CR>"
        },
    }
}

return M
