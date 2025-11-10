return {
    enabled = false,
    --'1emank/shelly.git'
    --'git@github.com:1emank/shelly.git'
    dir = vim.fn.expand('~/repos/nvim/shelly'),
    opts = {
        default = 'bash',
        { 'python3', name = 'Python' },
        { 'lua', name = 'Lua' },
        { 'tmux new-session -A -s main', name = 'Tmux' },
    },
    keys = { '<leader>s' },
    config = function()
        local term_icon = { icon = ' ', color = 'red' }
        local shelly_icon = { icon = '󱙷 ', color = 'yellow' }

        local wk = require('which-key')
        local shelly = require('shelly')

        wk.add({
            {
                '<leader>ss',
                shelly.toggle,
                desc = ' Toggle default shell' },
            {
                '<leader>sh',
                shelly.hide,
                icon = { icon = ' ', color = 'grey' },
                desc = ' Hide active shell',
            },
            {
                '<leader>sk',
                shelly.kill,
                icon = { icon = ' ', color = 'red' },
                desc = ' Kill active shell',
            },
            {
                '<leader>so',
                shelly.overview,
                icon = shelly_icon,
                desc = ' Shelly overview',
            },
            {
                '<leader>sp',
                function() shelly.toggle('Python') end,
                icon = term_icon,
                desc = ' Toggle Python shell',
            },
            {
                '<leader>sl',
                function() shelly.toggle('Lua') end,
                icon = term_icon,
                desc = ' Toggle Lua shell',
            },
            {
                '<leader>st',
                function() shelly.toggle('Tmux') end,
                icon = term_icon,
                desc = ' Toggle Tmux shell',
            },
            { '<leader>s', icon = shelly_icon, desc = 'Shelly' },
        })
    end
}
