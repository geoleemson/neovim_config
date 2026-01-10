return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false, -- neo-tree will lazily load itself
    opts = {
        window = {
            position = "left",
            width = 25 
        }
    },
    keys = {
        { 
            "<leader>nf", function()
                require("neo-tree.command").execute({
                    source = "filesystem",
                    reveal = true,
                    position = "left"
                })
            end, {desc = "Open Neotree"} 
        } 
    }
}
