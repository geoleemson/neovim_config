return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons", -- optional, but recommended
        "s1n7ax/nvim-window-picker"
    },
    lazy = false, -- neo-tree will lazily load itself
    opts = {
        window = {
            position = "left",
            width = 30
        },
        popup_border_style = "NC",
        file_size = {
          enabled = true,
          width = 12, -- width of the column
          required_width = 64, -- min width of window required to show this column
        }
    },
}
