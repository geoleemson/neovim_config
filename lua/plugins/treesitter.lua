-- To install parsers: TSInstall [language]
-- To check parsers available :checkhealth nvim-treesitter
-- To start parser for a new filetype, when opening it's buffer: add name to pattern below
-- To stop treesitter in a buffer :lua vim.treesitter.stop()
-- To start it again :lua vim.treesitter.start()

-- Treesitter parser files are in: ~/.local/share/nvim/site/parser/ 
-- Each language parser is in <language>.so file
return {
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        build = ":TSUpdate",

        config = function()
            require("nvim-treesitter").install({
                "python",
                "lua",
            })

            vim.api.nvim_create_autocmd("FileType", {
                pattern = { "python", "lua", "c"},
                callback = function()
                    vim.treesitter.start()
                    vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
                    vim.wo.foldmethod = "expr"
                    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
                end,
            })
        end,
    },
}
