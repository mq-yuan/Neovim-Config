return {
    {
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!).
        build = "make install_jsregexp",
    },
    {
        "iurimateus/luasnip-latex-snippets.nvim",
        dependencies = {
            {
                "L3MON4D3/LuaSnip",
                -- follow latest release.
                version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
                -- install jsregexp (optional!).
                build = "make install_jsregexp",
            },
            {
                "lervag/vimtex",
                lazy = false,     -- we don't want to lazy load VimTeX
                -- tag = "v2.15", -- uncomment to pin to a specific release
                init = function()
                    -- VimTeX configuration goes here, e.g.
                    vim.g.vimtex_view_method = "zathura"
                end
            }
        },
        config = function ()
            require("luasnip-latex-snippets").setup()
            require("luasnip").setup({enable_autosnippets = true})
        end
    }
}

