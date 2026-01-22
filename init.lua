-- Path ~/.config/nvim/lua is added automatically
require("config")
require("lazyvim")

-- Toggle diagnostics
local diagnostics_visible = false

-- Hide the Error/Warnings and only show symbols in gutter
vim.diagnostic.config({
    virtual_text = diagnostics_visible,   -- hide inline/EOL diagnostics
    signs = true,           -- keep gutter signs
    underline = false,      -- optional: no squiggles
    update_in_insert = false,
    severity_sort = true,
    float = {
        border = "rounded",
        source = "if_many",
        header = "",
        prefix = "",
    },
})

vim.keymap.set("n", "<leader>td", function()
    diagnostics_visible = not diagnostics_visible
    vim.diagnostic.config({
        virtual_text = diagnostics_visible,
    })
end, { desc = "Toggle diagnostics virtual text" })
