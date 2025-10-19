local center = {
    -- New file             - n
    -- Recent files         - r
    -- Restore sesion       - s
    -- Restore last sesion  - l
    -- Config files         - c
    -- Plugins              - p
    -- Update plugins       - u
    -- Quit                 - q
    {
        desc = 'New File',
        icon = ' ',
        key = 'n',
        action = 'ene | startinsert',
    },
    {
        desc = 'Recent Files',
        icon = ' ',
        key = 'r',
        action = function() Snacks.picker.recent() end,
    },
    {
        desc = 'Config',
        icon = ' ',
        key = 'c',
        action = function()
            Snacks.picker.files({ cwd = vim.fn.stdpath("config") })
        end,
    },
    {
        desc = 'Manage plugins',
        icon = '󰒲 ',
        key = 'p',
        action = 'Lazy',
    },
    {
        desc = 'Update plugins',
        icon = ' ',
        key = 'u',
        action = 'Lazy sync',
    },
    {
        desc = 'Quit',
        icon = ' ',
        key = 'q',
        action = function() vim.api.nvim_input('<cmd>qa<cr>') end,
    },
}
local vert_size = table.maxn(center)

local footer = function()
    local stats = require('lazy').stats()
    local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
    return {
        '⚡ Neovim loaded '
            .. stats.loaded
            .. '/'
            .. stats.count
            .. ' plugins in '
            .. ms
            .. 'ms',
        'CWD: ' .. vim.fn.getcwd(),
    }
end
vert_size = vert_size + 2

local header = {
    '',
    '███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
    '████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
    '██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
    '██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
    '██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
    '╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
    '',
}
vert_size = vert_size + table.maxn(header)

local upper_padding =
    math.floor((vim.api.nvim_win_get_height(0) - vert_size) / 3)

for _ = 1, upper_padding do
    table.insert(header, 1, '')
end

local options = {
    theme = 'doom',
    hide = {
        statusline = true,
        tabline = true,
        winbar = true,
    },
    config = { header = header, center = center, footer = footer },
}

for _, button in ipairs(options.config.center) do
    button.desc = ' '
        .. button.desc
        .. ' '
        .. string.rep('·', 43 - #button.desc)
    button.key_format = ' [%s]'
end

return {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    dependencies = {
        'folke/snacks.nvim',
    },
    opts = options,
}
