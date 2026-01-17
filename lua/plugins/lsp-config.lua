--To check which lsp server is currently running
--:LspInfo
--
--To check which language servers are installed and available ones
--:Mason
return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "neovim/nvim-lspconfig",
            "hrsh7th/cmp-nvim-lsp",
        },
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig")
            require("mason-lspconfig").setup({
                -- Might need to install: apt install python3.10-venv
                ensure_installed = { "lua_ls", "basedpyright" },
                handlers = {
                    function(server)
                        lspconfig[server].setup({
                            capabilities = capabilities,
                            on_attach = function(_, bufnr)
                                local opts = { buffer = bufnr }
                                vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
                                vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
                            end,
                        })
                    end,
                },
            })
        end
    },
    {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
            library = {
                -- See the configuration section for more details
                -- Load luvit types when the `vim.uv` word is found
                { path = "${3rd}/luv/library", words = { "vim%.uv" } },
            },
        },
    }
}
