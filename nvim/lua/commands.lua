local command = vim.api.nvim_create_user_command
local autocmd = vim.api.nvim_create_autocmd
local timer = (vim.uv or vim.loop).new_timer

command('LuaExprToFile', function(opts)
    local lines =
        vim.fn.split(vim.inspect(loadstring('return ' .. opts.args)()), '\n')
    vim.api.nvim_put(lines, 'l', true, true)
end, { nargs = 1 })

command('LuaOutputToFile', function(opts)
    local out = vim.fn.execute('lua ' .. opts.args)
    local lines = vim.split(out, '\n', { plain = true, trimempty = true })
    vim.api.nvim_put(lines, 'l', true, true)
end, { nargs = 1 })

command(
    'LightMode',
    function() vim.cmd('colorscheme ' .. vim.g.LIGHT_MODE) end,
    {}
)
command(
    'DarkMode',
    function() vim.cmd('colorscheme ' .. vim.g.DARK_MODE) end,
    {}
)

timer():start(
    300000,
    300000,
    vim.schedule_wrap(function()
        local buffer_id = vim.api.nvim_get_current_buf()
        local buftype = vim.bo[buffer_id].buftype

        if
            vim.bo[buffer_id].modified
            and buftype == ''
            and not vim.opt.ro:get()
            and vim.bo[buffer_id].modifiable
            and vim.api.nvim_buf_get_name(buffer_id) ~= ''
        then
            vim.cmd('silent write')
        end
    end)
)

return {}
