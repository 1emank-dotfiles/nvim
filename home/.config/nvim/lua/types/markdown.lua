return {
    'MeanderingProgrammer/render-markdown.nvim',
    ft = 'md',
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
