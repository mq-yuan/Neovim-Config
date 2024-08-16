return {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
}

-- "you surround" for `ys{motion}{char}`
--     Old text                    Command         New text ~
--     local str = H*ello          ysiw"           local str = "Hello"
--     require"nvim-surroun*d"     ysa")           require("nvim-surround")
--     char c = *x;                ysl'            char c = 'x';
--     int a[] = *32;              yst;}           int a[] = {32};

-- "delete surround" for `ds[char]`
--    Old text                    Command         New text ~
--    local x = ({ *32 })         ds)             local x = { 32 }
--    See ':h h*elp'              ds'             See :h help
--    local str = [[Hell*o]]      ds]             local str = [Hello]

-- "change surround" for `cs{target}{replacement}`
--   Old text                    Command         New text ~
--   '*some string'              cs'"            "some string"
--   use<*"hello">               cs>)            use("hello")
--   `some text*`                cs`}            {some text}
