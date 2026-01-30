vim.g.mapleader = " "

-- Normal Mode
vim.keymap.set("n", "J", "5j", {desc = "save file"})
vim.keymap.set("n", "K", "5k", {desc = "save file"})
vim.keymap.set("n", "<leader>w", ":w<CR>", {desc = "save file"})
vim.keymap.set("n", "q", ":qa<CR>", {desc = "Quit"})
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
vim.keymap.set({ "n", "t" }, "<leader>l", "<cmd>wincmd l<cr>", {desc = "Move to right window"})
vim.keymap.set({ "n", "t" }, "<leader>h", "<cmd>wincmd h<cr>", {desc = "Move to left window"})
vim.keymap.set({ "n", "t" }, "<leader>k", "<cmd>wincmd k<cr>", {desc = "Move to up window"})
vim.keymap.set({ "n", "t" }, "<leader>j", "<cmd>wincmd j<cr>", {desc = "Move to down window"})

-- Remap Visual block kemap
vim.keymap.set({ "n", "v"}, "<C-q>", "<C-v>", { noremap = true})

-- Delete/change without yanking
vim.keymap.set({ "n", "v" }, "d", '"_d')
vim.keymap.set({ "n", "v" }, "c", '"_c')
vim.keymap.set({ "n", "v" }, "x", '"_x')

-- Neotree
vim.keymap.set('n', '<leader>e', "<cmd>Neotree toggle<cr>", {
  desc = "Toggle Neo-tree",
  silent = true,
})

-- ToggleTerm
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>:ToggleTerm<CR>]] ,{desc = "Code action"})

-- Telescope
--vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", {desc = "Telescope: find files"})

-- Insert Mode
vim.keymap.set("i", "jk", "<Esc>", {desc = "Escape from insert mode"})

-- Command Mode
vim.keymap.set("c", "jk", "<Esc>", {desc = "Escape from command mode"})

-- Visual Mode
vim.keymap.set("v", "jk", "<Esc>", {desc = "Escape from visual selection mode"})
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {desc = "moves lines down in visual selection"})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {desc = "moves lines down in visual selection"})
vim.keymap.set("v", "<", "<gv", {desc = "Indent left"})
vim.keymap.set("v", ">", ">gv", {desc = "Indent right"})
vim.keymap.set("v", "<C-_>", "gcgv", { remap = true, desc = "Comment block"})
vim.keymap.set("v", "<C-/>", "gcgv", { remap = true, desc = "Comment block"})
vim.keymap.set("v", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>", {desc = "Code action"})
