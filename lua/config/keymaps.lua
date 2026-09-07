local function close_snacks_explorer()
    for _, win in ipairs(vim.api.nvim_list_wins()) do
        local buf = vim.api.nvim_win_get_buf(win)

        if vim.bo[buf].filetype == "snacks_picker_list" then
            Snacks.explorer({action = "close"})
        end
    end
end

vim.g.mapleader = " "

-- Normal Mode
vim.keymap.set("n", "J", "5j", {desc = "save file"})
vim.keymap.set("n", "K", "5k", {desc = "save file"})
vim.keymap.set("n", "<leader>w", ":w<CR>", {desc = "save file"})
vim.keymap.set("n", "q", function ()
    close_snacks_explorer()
    vim.cmd("qa")
end, {desc = "Quit"})
vim.keymap.set("n", "<leader>x", ":q!<CR>", {desc = "Quit without saving"})
vim.keymap.set("n", "<leader>s", ":source %<CR>", {desc = "Source the changes"})
vim.keymap.set("n", "<S-c>", ":nohl<CR>", {desc = "Clear find highlights"})
vim.keymap.set("n", "<C-a>", "gg<S-v>G", {desc = "Select all"})
vim.keymap.set("n", "<C-_>", "gcc", { remap = true, desc = "Comment line"})
vim.keymap.set("n", "<C-/>", "gcc", { remap = true, desc = "Comment line"})
vim.keymap.set("n", "<leader>u", ":e!<CR>", {silent = true, desc = "Undo all changes to file since opening or last save"})
vim.keymap.set("n", "<leader>y", "<cmd>Telescope current_buffer_fuzzy_find<cr>", {desc = "Testing functions"})
vim.keymap.set("n", "<leader>tw", [[<cmd>%s/\s\+$//e<cr>]], {desc = "Remove trailing whitespaces"})
vim.keymap.set("n", "<leader>cr", [[<cmd>%s/\r\+$//<CR>]], {desc = "Remove all carriages"})
vim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>", {desc = "Code action"})

-- Moving between windows
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Remap Visual block kemap
vim.keymap.set({ "n", "v"}, "<C-q>", "<C-v>", { noremap = true})

-- Delete/change without yanking
vim.keymap.set({ "n", "v" }, "d", '"_d')
vim.keymap.set({ "n", "v" }, "c", '"_c')
vim.keymap.set({ "n", "v" }, "x", '"_x')

-- ToggleTerm
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>:ToggleTerm<CR>]] ,{desc = "Code action"})

-- Insert Mode
vim.keymap.set("i", "jk", "<Esc>", {desc = "Escape from insert mode"})
vim.keymap.set("i", "<C-o>", "<Esc>o", {desc = "Escape and go to next line"})

-- Command Mode
vim.keymap.set("c", "jk", "<Esc>", {desc = "Escape from command mode"})

-- Visual Mode
vim.keymap.set("v", "oi", "<Esc>", {desc = "Escape from visual selection mode"})
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {desc = "moves lines down in visual selection"})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {desc = "moves lines down in visual selection"})
vim.keymap.set("v", "<", "<gv", {desc = "Indent left"})
vim.keymap.set("v", ">", ">gv", {desc = "Indent right"})
vim.keymap.set("v", "<C-_>", "gcgv", { remap = true, desc = "Comment block"})
vim.keymap.set("v", "<C-/>", "gcgv", { remap = true, desc = "Comment block"})
vim.keymap.set("v", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>", {desc = "Code action"})

-- Persistance
-- load the session for the current directory
vim.keymap.set("n", "<leader>ps", function() require("persistence").load() end)
-- select a session to load
vim.keymap.set("n", "<leader>pS", function() require("persistence").select() end)
-- load the last session
vim.keymap.set("n", "<leader>pl", function() require("persistence").load({ last = true }) end)
-- stop Persistence => session won't be saved on exit
vim.keymap.set("n", "<leader>pd", function() require("persistence").stop() end)

--Auto Indent
--Specific block: Select block, press =
--Current line: Press ==
--Entire file: gg=G
