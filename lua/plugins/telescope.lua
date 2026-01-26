-- LIVE GREP --
-- Live grep is a way to find text inside files
-- But for it to work you need ripgrep from BurntSushi
-- Goto https://github.com/BurntSushi/ripgrep for installation details
-- It's installed in system level
-- 
-- for sharkdp do the same 
--
-- Use :checkhealth telescope to see if everything is okay
return {
    {
        'nvim-telescope/telescope.nvim', branch = "master",
        dependencies = {
            'nvim-lua/plenary.nvim',
            -- optional but recommended
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        },
        config = function()
            vim.keymap.set("n", "<leader>ff", require('telescope.builtin').find_files, { desc = "Telescope: Find Files in current directory"})
            vim.keymap.set("n", "<leader>lg", require('telescope.builtin').live_grep, { desc = "Telescope: Live Grep in cwd"})
            vim.keymap.set("n", "<leader>of", require('telescope.builtin').oldfiles, { desc = "Telescope: Open Recent Files" })
            vim.keymap.set("n", "<leader>fif", require('telescope.builtin').current_buffer_fuzzy_find, { desc = "Telescope: Fuzzy find in current file"})
            vim.keymap.set("n", "<leader>tr", require('telescope.builtin').resume)
            vim.keymap.set("n", "<leader>gb", require('telescope.builtin').git_branches, { desc = "Telescope: Show git branches"})
            vim.keymap.set("n", "<leader>gc", require('telescope.builtin').git_commits, { desc = "Telescope: Show git commits"})
            vim.keymap.set("n", "<leader>gs", require('telescope.builtin').git_status, { desc = "Telescope: Show git status"})
            vim.keymap.set("n", "<leader>sk", require('telescope.builtin').keymaps, {desc = "Telescope: Show keymaps"})
            vim.keymap.set("n", "<leader>fn", function()
                require('telescope.builtin').find_files{
                    cwd = vim.fn.stdpath("config")
                }
            end, { desc = "Telescope: fzf in nvim config"})
            -- Add your custom file paths
            -- vim.keymap.set("n", "<leader>fd", function()
            --     require('telescope.builtin').find_files{
            --         cwd = "~/Documents/Python/"                }
            -- end)
        end
    }
}
