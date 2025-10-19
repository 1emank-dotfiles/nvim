return {
    '2kabhishek/nerdy.nvim',
    event = 'BufReadPre',
    dependencies = {
        'folke/snacks.nvim',
    },
    cmd = 'Nerdy',
    keys = {
        { '<leader>in', '<cmd>Nerdy<cr>', desc = 'Browse nerd icons' },
        { '<leader>iN', '<cmd>Nerdy recents<cr>', desc = 'Browse recent nerd icons' },
    },
    opts = {
        max_recents = 30,
        copy_to_clipboard = false,
    }
}
