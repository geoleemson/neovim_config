vim.g.mapleader = " "

-- Normal Mode
vim.keymap.set("n", "<leader>w", ":w<CR>", {desc = "save file"})
vim.keymap.set("n", "<leader>q", ":q<CR>", {desc = "Quit"})
vim.keymap.set("n", "<leader>x", ":q!<CR>", {desc = "Quit without saving"})
vim.keymap.set("n", "<leader>e", ":Ex<CR>", {desc = "Go to file manager"})
vim.keymap.set("n", "<leader>s", ":source %<CR>", {desc = "Source the changes"})
vim.keymap.set("n", "<S-c>", ":nohl<CR>", {desc = "Clear find highlights"})

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
