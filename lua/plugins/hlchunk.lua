return {
    'shellRaining/hlchunk.nvim',
    event = "VeryLazy",
    config = function()
        require('hlchunk').setup({
            indent = {
                chars = { "│", "¦", "┆", "┊", }, -- 更多的字符可以在 https://unicodeplus.com/ 这个网站上找到


                style = {
                    "#8B00FF",
                },
            },
            blank = {
                enable = false,
            }
        })
    end
}
