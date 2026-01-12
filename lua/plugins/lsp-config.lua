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
        config = function()
            require("mason-lspconfig").setup({
                -- Might need to install: apt install python3.10-venv
                ensure_installed = { "lua_ls", "basedpyright" }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            -- local lspconfig = require("lspconfig")
            vim.lsp.config("lua_ls", {})
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
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
    },
}
