-- LIVE GREP --
-- Live grep is the way to find text inside files
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
            print("")
        end
    }
}
