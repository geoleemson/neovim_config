return{
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        vim.keymap.set("n", "<C-\\>", "<cmd>ToggleTerm<cr>", { silent = true })
        vim.keymap.set("t", "<C-\\>", "<cmd>ToggleTerm<cr>", { silent = true })
        vim.keymap.set("n", "<leader>rp", function()
            vim.cmd("w")
            local file = vim.fn.expand("%")
            vim.cmd("ToggleTerm direction=float")
            require("toggleterm").exec("python3 " .. file)
        end)
        vim.keymap.set("n", "<leader>pb", function ()
            vim.cmd("ToggleTerm direction=float")
            require("toggleterm").exec("pio run")
        end)
        vim.keymap.set({"n", "t"}, "<leader>pu", function ()
            vim.cmd("ToggleTerm direction=float")
            require("toggleterm").exec("pio run -t upload")
        end)
        vim.keymap.set({"n", "t"}, "<leader>pm", function ()
            vim.cmd("ToggleTerm direction=float")
            require("toggleterm").exec("pio device monitor")
        end)
        require("toggleterm").setup({
            direction = "horizontal",
            size = 15,
            shade_terminals = true,
            start_in_insert = true,
        })
    end
}
