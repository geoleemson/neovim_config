return{
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- optional icons
    config = function()
      require("lualine").setup({
        options = {
          theme = "auto",
          icons_enabled = true,
        },
        -- Use the section to enable/disable show full path of file
        sections = {
            lualine_c = {
                {
                    'filename',
                    path = 1, -- 0: Just filename, 1: Relative path, 2: Absolute path, 3: Absolute path with tilde (~/)
                }
            }
        },
      })
    end
}
