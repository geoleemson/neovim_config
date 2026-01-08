return {
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
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
