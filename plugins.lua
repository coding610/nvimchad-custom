local plugins = {
    ------------------ LSP -------------------
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end,
    },
    {
        "nvim-lua/lsp_extensions.nvim",
        config = function()
            require 'custom.configs.lsp_extensions'
        end,
    },

    ------------------ DEBUGGING -------------------
    {
        "mfussenegger/nvim-dap",
        config = function(_, _)
            require("core.utils").load_mappings("dap")
        end
    },
    {
        "jay-babu/mason-nvim-dap.nvim",
        event = "VeryLazy",
        dependencies = {
            "mfussenegger/nvim-dap",
            "williamboman/mason.nvim"
        },
        opts = {
            handlers = {},
            ensure_installed = {
                "codelldb"
            }
        }
    },
    {
        "rcarriga/nvim-dap-ui",
        event = "VeryLazy",
        dependencies = {
            "mfussenegger/nvim-dap"
        },
        config = function()
            local dap = require("dap")
            local dapui = require("dapui")
            dapui.setup()
            dap.listeners.after.event_initialized["dapui_config"] = function()
                dapui.open();
            end
            dap.listeners.before.event_terminated["dapui_config"] = function()
                dapui.close();
            end
            dap.listeners.before.event_exited["dapui_config"] = function()
                dapui.close();
            end
        end
    },


    ------------------ OTHER -------------------
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "clangd",
                "clang-format",
                "pyright",
                "lua-language-server",
                "rust-analyzer",
            }
        }
    },

    {
        "nvim-telescope/telescope.nvim",
        opts = {
            defaults = {
                file_ignore_patterns = {
                    "node_modules",
                    "build",
                    "bin",
                    "gfx",
                    "assets",
                    "__pyache__",
                    "venv"
                }
            }
        }
    },
}

return plugins
