-- Path ~/.config/nvim/lua is added automatically
require("config")
require("lazyvim")

-- Hide the Error/Warnings and only show symbols in gutter
vim.diagnostic.config({
  virtual_text = false,   -- hide inline/EOL diagnostics
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
