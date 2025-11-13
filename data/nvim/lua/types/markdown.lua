return {
    'MeanderingProgrammer/render-markdown.nvim',
    ft = 'markdown',
    dependencies = {
        {
            'nvim-treesitter/nvim-treesitter',
            build = ':TSUpdate',
            opts = {},
        },
        'echasnovski/mini.icons',
    },
    opts = {},
}
