-- Functions

--- Give it the name of an environment variable and a default value. It will
--- detect if it is defined, and if it's not, it will assign the default value.
---@param name string
---@param default string
function _G.env_default(name, default)
    if vim.fn.empty(vim.env[name]) == 1 then vim.env[name] = default end
end

local function get_modules()
    local modules = {}
    local source = vim.fn.stdpath('config') .. '/lua'
    for _, item in ipairs(vim.fn.readdir(source)) do
        if vim.fn.isdirectory(source .. '/' .. item) == 1 then
            table.insert(modules, { import = item })
        elseif string.sub(item, -4) == '.lua' then
            table.insert(modules, { import = string.sub(item, 1, #item - 4) })
        end
    end
    return modules
end

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

---@diagnostic disable: undefined-field
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
    local out = vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        '--branch=stable',
        lazyrepo,
        lazypath,
    })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { 'Failed to clone lazy.nvim:\n', 'ErrorMsg' },
            { out, 'WarningMsg' },
            { '\nPress any key to exit...' },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end

vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

local lazy = require('lazy')

lazy.setup({
    spec = get_modules(),
    defaults = { lazy = true },
    install = { colorscheme = { 'github_dark_default' } },
})
