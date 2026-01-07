return{
{
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- optional icons
    config = function()
      require("lualine").setup({
        options = {
          theme = "auto",
          icons_enabled = true,
        },
      })
    end,
  },
}
