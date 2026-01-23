-- HOW THINGS WORK
-- Basics:
-- A language server needs to be installed, configured and enabled
--
-- Mason plugin is used to install language servers
-- You still need to configure(vim.lsp.config) and enable(vim.lsp.enable) them manually
-- You can manually config them. But here's where nvim-lspconfig plugin comes in
-- It has defaults that you can just enable
-- mason-lspconfig plugin takes this even further
-- Using this plugin you can list language servers and it will be automatically installed
-- and they are automatically enabled too!!!
return {
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {
                "lua_ls",
                "basedpyright"
            }
        },
        dependencies = {
            {
                "mason-org/mason.nvim",
                opts = {
                    ui = {
                        icons = {
                            package_installed = "✓",
                            package_pending = "➜",
                            package_uninstalled = "✗"
                        }
                    }
                },
            },
            "neovim/nvim-lspconfig",
        }
    },
    {
        "folke/lazydev.nvim",
        opts = {}
    }
}
