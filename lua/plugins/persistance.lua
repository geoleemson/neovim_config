return {
  "folke/persistence.nvim",
  event = "BufReadPre",
  opts = {},

  config = function(_, opts)
    require("persistence").setup(opts)

    vim.opt.sessionoptions:remove("blank")
  end,
}
