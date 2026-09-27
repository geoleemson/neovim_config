return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
      -- Theme variant: "storm", "moon", "night", "day"
      style = "night",

      -- Transparency: removes background so the terminal shows through
      transparent = true,

      -- Also make sidebars and floats transparent to match terminal acrylic
      styles = {
          sidebars = "transparent", -- set to "dark" for no transparent and "transparent" for transparent
          floats = "transparent",
          comments = { italic = true },
          keywords = { italic = true }, -- programming keywords
      },

      terminal_colors = true,
      dim_inactive = false,
      lualine_bold = true,

      on_highlights = function(hl, c)
          -- Number line color
          hl.CursorLineNr = {fg = c.orange, bold = true}
          hl.LineNrAbove = {fg = c.blue, bold = false}
          hl.LineNrBelow = {fg = c.blue, bold = false}
          -- Cursor Color
          hl.NormalCursor = {fg = "#1a1b26", bg = "#808080",}
          hl.InsertCursor = {fg = "#1a1b26", bg = "#7dcfff",}
          -- Floating Border color
          hl.FloatBorder = { fg = c.blue }
      end,
  },
  config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd.colorscheme("tokyonight")

      -- Normal: block
      -- Insert: vertical bar
      vim.opt.guicursor = {
          "n-v-c:block-NormalCursor",
          "i-ci-ve:ver25-InsertCursor",
          "r-cr:hor20-NormalCursor",
          "o:hor50-NormalCursor",
      }
  end,
}
