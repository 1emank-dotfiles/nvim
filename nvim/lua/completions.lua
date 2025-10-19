local function blink_build()
    if vim.fn.executable('rustup') == 1 then
        return 'cargo +nightly build --release'
    end
    return nil
end

return {
    {
        'folke/lazydev.nvim',
        ft = 'lua',
        opts = {
            library = {
                { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
            },
        },
    },
    {
        'saghen/blink.cmp',
        build = blink_build(),
        event = 'BufReadPre',
        opts = {
            keymap = {
                preset = 'none',
                ['<Tab>'] = { 'select_and_accept', 'fallback' },
                ['<C-y>'] = { 'select_and_accept', 'fallback' },
                ['<C-n>'] = { 'select_next', 'fallback' },
                ['<C-b>'] = { 'select_prev', 'fallback' },
                ['<C-space>'] = { 'show' },
            },
            sources = {
                default = {
                    'lazydev',
                    'lsp',
                    'path',
                    'snippets',
                    'buffer',
                },
                providers = {
                    lazydev = {
                        name = 'LazyDev',
                        module = 'lazydev.integrations.blink',
                        score_offset = 100,
                    },
                },
            },
        },
    },
    {
        'L3MON4D3/LuaSnip',
        event = 'BufReadPre',
        build = 'make install_jsregexp',
        opts = {},
        keys = {
            {
                '<C-p>',
                function()
                    local ls = require('luasnip')
                    if ls.expand_or_jumpable() then ls.expand_or_jump() end
                end,
                mode = 'i',
            },
        },
        config = function()
            ---@param ft string Language/filetype in which the snippet will be used
            ---@param context string Keyword that stores the snippet
            ---@param body string The snippet
            ---@param opts? table Options
            local function add(ft, context, body, opts)
                require('luasnip').add_snippets(ft, {
                    require('luasnip').parser.parse_snippet(
                        context,
                        body,
                        opts
                    ),
                })
            end
            -- add('lua', 'test', 'foo $1 bar')
            add(
                'python',
                'main',
                'import sys\nimport os\n\n'
                    .. 'def main(args = sys.argv, env = os.environ):\n'
                    .. "    print('Hello World')\n"
                    .. '    return 0\n\n'
                    .. "if __name__ == '__main__':\n"
                    .. '    sys.exit(main())\n'
            )
        end,
    },
}
