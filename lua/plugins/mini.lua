return {
    -- Mini Nvim
    {"nvim-mini/mini.nvim", version = '*' },
    enabled = false,
    -- MINI EXPLORER --
    -- Basics --
    -- :lua MiniFiles.open() - if you don't have any key bindings set
    -- To Open files: 'l' like navigating into it(Enter doesn't work; goes to next line)
    -- Bookmarks --
    -- m<key> - to set a bookmark
    -- '<key> - navigate to the bookmark
    -- Bookmarks are all reset when you close neovim
    -- To see all bookmarks: Go to help screen 'g?'
    { 'nvim-mini/mini.files', version = '*',
    config = function()
        vim.keymap.set("n", "<leader>me", "<cmd>:lua MiniFiles.open()<cr>", { desc = "Go to next tab" })
        require('mini.files').setup({})
    end
    },
    -- MINI CMDLINE --
    -- Autocompletion for vim command line
    { 'nvim-mini/mini.cmdline', version = '*',
    config = function()
        require('mini.cmdline').setup({})
    end
    },
}
