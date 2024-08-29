return {
    {
        "rktjmp/lush.nvim"
    },
    {
        "xero/miasma.nvim",
        branch = "dev",
        dependencies = {
            "rktjmp/lush.nvim",
            "rktjmp/shipwright.nvim",
        },
        lazy = false,
        priority = 1000,
    },
    {
        'folke/tokyonight.nvim',
        lazy = false,
        priority = 1000,
        name = 'tokyonight',
    },
    {
        'xiyaowong/transparent.nvim',
    }
}
