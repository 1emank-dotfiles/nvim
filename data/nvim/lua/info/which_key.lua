return {
    'folke/which-key.nvim',
    lazy = false,
    opts = {
        preset = 'helix',
        loop = true,
        delay = 200,
        win = {
            border = false,
            title = false,
        },
    },
    keys = {
        {
            '<leader>?',
            function()
                require('which-key').show({ global = false })
            end,
            desc = 'Buffer Local Keymaps (Which-key)',
        },
        {
            '<leader><leader>',
            function()
                require('which-key').show()
            end,
            desc = 'Open Which-Key',
        },
    },
    -- config = function() end
}
