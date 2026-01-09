-- ~/.config/nvim/lua/plugins/tokyonight.lua
return {
  {
    "folke/tokyonight.nvim",
    lazy = false,      -- load during startup
    priority = 1000,   -- load before other plugins
    opts = {
      -- Theme variant: "storm", "moon", "night", "day"
      style = "night",

      -- Transparency: removes background so the terminal shows through
      transparent = false,

      -- Also make sidebars and floats transparent to match terminal acrylic
      styles = {
        sidebars = "transparent", -- set to "dark" for no transparent and "transparent" for transparent
        floats = "transparent",
        comments = { italic = true },
        keywords = { italic = true },
      },

      terminal_colors = true,
      dim_inactive = false,
      lualine_bold = true,

      -- Optional fine-tuning (example):
      on_highlights = function(hl, c)
        -- Make line number of current line pop a bit
        hl.CursorLineNr = { fg = c.orange, bold = true }
        -- For relative numbers
        hl.LineNrAbove = {fg = c.blue, bold = false}
        hl.LineNrBelow = {fg = c.blue, bold = false}
        -- If you want popups (floats) to still have a subtle border:
        hl.FloatBorder = { fg = c.blue }
      end,
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)

      -- If you ever toggle transparency at runtime, you can also make sure these are "none":
      local function set_transparent_groups()
        local groups = {
          "Normal", "NormalNC", "NormalFloat", "SignColumn",
          "LineNr", "FoldColumn", "CursorLine", "CursorColumn",
          "StatusLine", "StatusLineNC", "EndOfBuffer", "MsgArea",
          "WinSeparator",
        }
        for _, g in ipairs(groups) do
          local ok, def = pcall(vim.api.nvim_get_hl, 0, { name = g, link = false })
          if ok then
            def.bg = "none"
            vim.api.nvim_set_hl(0, g, def)
          end
        end
      end

      -- Apply the colorscheme, then enforce transparency on key UI groups
      vim.cmd.colorscheme("tokyonight")
      set_transparent_groups()
    end,
  },
}
