return {
    '2kabhishek/nerdy.nvim',
    dependencies = {
        'folke/snacks.nvim',
    },
    cmd = 'Nerdy',
    keys = {
        { '<leader>nn', '<cmd>Nerdy<cr>', desc = 'Browse nerd icons' },
        { '<leader>nr', '<cmd>Nerdy recents<cr>', desc = 'Browse recent nerd icons' },
    },
    opts = {
        max_recents = 30,
        copy_to_clipboard = false,
    }
}
