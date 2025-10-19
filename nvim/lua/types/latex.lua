return {
    'lervag/vimtex',
    ft = 'tex',
    dependencies = {
        'xuhdev/vim-latex-live-preview',
    },
    opts = {},
    config = function()
        -- vim.g.livepreview_previewer = 'okular'
        vim.g.livepreview_previewer = 'zathura'
        -- vim.g.livepreview_previewer = 'mupdf'
        vim.g.vimtex_view_enabled = 1
        vim.g.vimtex_view_method = 'zathura'
        vim.g.vimtex_view_general_viewer = 'zathura'
        vim.g.vimtex_view_general_options =
            '--unique file:@pdf\\#src:@line@tex'
        vim.g.vimtex_compiler_method = 'latexrun'
    end,
}
