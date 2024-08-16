return {
    -- Simple plugins can be specified as strings
    'rstacruz/vim-closer',

    -- UndoTree
    {
        'mbbill/undotree',
        lazy = true,
    },


    -- FZF
    'junegunn/fzf',
    'junegunn/fzf.vim',

    -- comment
    'tpope/vim-commentary',

    -- -- COC
    -- {
    --     'neoclide/coc.nvim',
    --     branch = 'release'
    -- },

    -- icons
    {
        "echasnovski/mini.icons",
        lazy = true,
        opts = {
            file = {
                [".keep"] = { glyph = "󰊢", hl = "MiniIconsGrey" },
                ["devcontainer.json"] = { glyph = "", hl = "MiniIconsAzure" },
            },
            filetype = {
                dotenv = { glyph = "", hl = "MiniIconsYellow" },
            },
        },
        init = function()
            package.preload["nvim-web-devicons"] = function()
                require("mini.icons").mock_nvim_web_devicons()
                return package.loaded["nvim-web-devicons"]
            end
        end,
    },

    {
        'echasnovski/mini.nvim',
        version = false,
        dependencies = { 'echasnovski/mini.icons' },
        config = function()
            require('mini.icons').setup()
        end
    },


    --snippets
    'honza/vim-snippets',

    -- coplit
    {
        'github/copilot.vim',
        event = "VeryLazy",
    },

}
