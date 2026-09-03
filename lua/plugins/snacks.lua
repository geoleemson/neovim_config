return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        animate = { enabled = true },
        bigfile = { enabled = true },
        explorer = { enabled = true },
        indent = { enabled = true },
        input = { enabled = true },
        lazygit = { enabled = true },
        picker = { enabled = true },
        notifier = { enabled = true },
        quickfile = { enabled = true },
        scope = { enabled = true },
        scroll = { enabled = true },
        statuscolumn = { enabled = true },
        words = { enabled = true },
        dashboard = { enabled = true, 
            keys = {
                { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
                { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
                { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
                { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
                { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
                { icon = " ", key = "s", desc = "Restore Session", section = "session" },
                { icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
                { icon = " ", key = "q", desc = "Quit", action = ":qa" },
            },
        },
    }, 
    keys = {
        -- Explorer
        { "<leader>e", function() Snacks.explorer() end, desc = "File Explorer" },
        -- Picker 
        { "<leader>n", function() Snacks.picker.notifications() end, desc = "Notification History" },
        { "<leader>:", function() Snacks.picker.command_history() end, desc = "Command History" },
        { "<leader>th", function() Snacks.picker.colorschemes() end, desc = "Pick Themes" }, -- only sets it for current session
        { "<leader>ff", function() Snacks.picker.files() end, desc = "Find Files in cwd" }, 
        { "<leader>fn", function() Snacks.picker.lazy() end, desc = "Find files in nvim config" }, 
        { "<leader>gd", function() Snacks.picker.lsp_definitions() end, desc = "Go to definition" }, 
        -- Lazygit
        { "<leader>lg", function() Snacks.lazygit() end, desc = "Open Lazygit" },
    },
}
