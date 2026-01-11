-- vim.cmd("let g:netrw_banner = 0")

-- Line numbers
vim.opt.number = true            -- Show absolute line numbers
vim.opt.relativenumber = true    -- Show relative line numbers for easier movement

--tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Search
vim.opt.ignorecase = true        -- Ignore case in search patterns
vim.opt.smartcase = true         -- Override ignorecase if search contains uppercase
vim.opt.incsearch = true         -- Show matches while typing
vim.opt.hlsearch = true          -- Highlight all matches

-- UI
vim.opt.cursorline = true        -- Highlight current line
vim.opt.signcolumn = "yes"       -- Always show sign column (for diagnostics, git)
vim.opt.termguicolors = true     -- Enable true color support
vim.opt.wrap = false             -- Disable line wrapping
vim.opt.background = "dark"

-- Splits
vim.opt.splitright = true        -- Vertical splits open to the right
vim.opt.splitbelow = true        -- Horizontal splits open below

-- Scrolling
vim.opt.scrolloff = 8            -- Keep 8 lines visible above/below cursor
vim.opt.sidescrolloff = 8        -- Horizontal scroll padding

-- Undo & backup
vim.opt.undofile = false          -- Persistent undo
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

-- Mouse
vim.opt.mouse = "a"              -- Enable mouse in all modes

-- Update time (for CursorHold events)
vim.opt.updatetime = 250

-- Clipboard
vim.opt.clipboard = "unnamedplus" -- Use system clipboard
