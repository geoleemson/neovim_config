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
            vim.keymap.set("n", "<leader>ff", require('telescope.builtin').find_files)
            vim.keymap.set("n", "<leader>fg", require('telescope.builtin').live_grep)
            vim.keymap.set("n", "<leader>fn", function()
                require('telescope.builtin').find_files{
                    cwd = vim.fn.stdpath("config")
                }
            end)
            -- Add your custom file paths
            -- vim.keymap.set("n", "<leader>fd", function()
            --     require('telescope.builtin').find_files{
            --         cwd = "~/Documents/Python/"                }
            -- end)
        end
    }
}
