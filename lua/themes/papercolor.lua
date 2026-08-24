-- Comment vim.cmd line to set/unset theme
return {
  "NLKNguyen/papercolor-theme",
  lazy = false,
  priority = 1000, -- Load this first before other UI plugins
  config = function()
    -- Set background to dark or light
    vim.opt.background = "dark" -- or "light"
    -- vim.cmd("colorscheme PaperColor")
  end,
}
