return {
    ------------------ INTELLISENSE -------------------
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

    ------------------ SQL DEV -------------------
    {
        "tpope/vim-dadbod",
        event = "VeryLazy",
        opts = {},
        config = function() end
    },
    {
        "kristijanhusak/vim-dadbod-ui",
        event = "VeryLazy",
        opts = {},
        config = function() end
    },
    {
        "kristijanhusak/vim-dadbod-completion",
        event = "VeryLazy",
        after = 'nvim-cmp',
        opts = {},
        config = function() end
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
            "mfussenegger/nvim-dap",
            "nvim-neotest/nvim-nio"
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


    ------------------ OVERWRITES -------------------
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
        "williamboman/mason-lspconfig.nvim",
        event = "VeryLazy",
        opts = {}
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
                    "venv",
                    "submods",
                    "imgui",
                    "vmmlib",
                    "extern",
                    "shaders"
                }
            }
        }
    },

    {
        "hrsh7th/nvim-cmp",
        opts = {
            sources = {
                { name = "nvim_lsp" },
                { name = "luasnip" },
                { name = "buffer" },
                { name = "nvim_lua" },
                { name = "path" },
                { name = "vim-dadbod-completion" },
            }
        }
    },

    ------------------ OTHER -------------------
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" },
        event = "VeryLazy",
        config = function()
            require "custom.configs.harpoon"
        end,
    },
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },
    {
        'vidocqh/data-viewer.nvim',
        opts = {},
        event = "VeryLazy",
        dependencies = {
          "nvim-lua/plenary.nvim",
          "kkharji/sqlite.lua", -- Optional, sqlite support
        }
    },
    {
        'stevearc/oil.nvim',
        event = "VeryLazy",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {},
        config = function() end
    }
}
