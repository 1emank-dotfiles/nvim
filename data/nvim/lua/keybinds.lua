-- Function section

--- Moves the focus to the window in the desired direction.
--- 'dir' must be 'h', 'j', 'k' or 'l'
---@param dir string
local function move_win(dir)
    return function()
        local target_win = vim.fn.win_getid(vim.fn.winnr(dir))
        if target_win ~= 0 then vim.api.nvim_set_current_win(target_win) end
        vim.api.nvim_input('<Esc>')
    end
end
local function term_to_normal()
    vim.api.nvim_feedkeys(
        vim.api.nvim_replace_termcodes('<C-\\><C-n>', true, false, true),
        'n',
        true
    )
end
local function toggle_hl()
    ---@diagnostic disable-next-line: undefined-field
    vim.opt.hlsearch = not vim.opt.hlsearch:get()
end
local function toggle_virtualedit()
    if vim.o.virtualedit == 'all' then
        vim.o.virtualedit = nil
        print('virtualedit: disabled')
    else
        vim.o.virtualedit = 'all'
        print('virtualedit: enabled')
    end
end
-- local function close_hidden_buffers()
--     for _, buf in ipairs(vim.api.nvim_list_bufs()) do
--         if vim.api.nvim_buf_is_loaded(buf) and #vim.fn.win_findbuf(buf) == 0 then
--             pcall(vim.api.nvim_buf_delete, buf, {})
--         end
--     end
-- end

-- Bindings section
-- set(mode(s), input, result)
local set = vim.keymap.set
local all_modes = { 'n', 'i', 'v', 't', 'x', 's' }

set(all_modes, '<C-h>', move_win('h'), { desc = ' Move to left window' })
set(all_modes, '<C-j>', move_win('j'), { desc = ' Move to lower window' })
set(all_modes, '<C-k>', move_win('k'), { desc = ' Move to upper window' })
set(all_modes, '<C-l>', move_win('l'), { desc = ' Move to right window' })

set(all_modes, '<leader><A-n>', '<cmd>tabnew<cr>', { desc = 'New tab' })
set(all_modes, '<leader><A-b>', '<cmd>tabclose<cr>', { desc = 'Close tab' })
set(all_modes, '<A-n>', '<cmd>tabnext<cr>', { desc = 'Next tab' })
set(all_modes, '<A-b>', '<cmd>tabpre<cr>', { desc = 'Previous tab' })
-- set(all_modes, '<A-x>', close_hidden_buffers, { desc = 'Close hidden buffers } )
set('t', '<Esc><Esc>', term_to_normal)

set('n', '+', '$', { desc = 'End of line' })
set('v', '+', '$h', { desc = 'End of line' })

set('n', '<leader>c', '', { desc = 'Quick Configs' })
set('n', '<leader>c/', toggle_hl, { desc = 'Toggle search highlighting' })
set('n', '<leader>cv', toggle_virtualedit, { desc = 'Toggle virtual edit' })

return {}
