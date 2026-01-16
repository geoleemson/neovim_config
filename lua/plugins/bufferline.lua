return{
    'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        vim.keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Go to next tab" })
        vim.keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Go to previous tab" })
        vim.keymap.set("n", "<leader>bb", "<cmd>BufferLinePick<cr>", { desc = "Delete buffer picker" })
        vim.keymap.set("n", "<leader>bo", "<cmd>BufferLineCloseOthers<cr>", { desc = "Close other tabs" })
        vim.keymap.set("n", "<leader>bc", "<cmd>bdelete<cr>", { desc = "Close current tab" })
        require("bufferline").setup({})
    end
}
