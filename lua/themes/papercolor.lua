-- Comment vim.cmd line to set/unset theme
return {
  "NLKNguyen/papercolor-theme",
  lazy = true,
  config = function()
    -- Set background to dark or light
    vim.opt.background = "dark" -- or "light"
    -- vim.cmd("colorscheme PaperColor")
  end,
}
