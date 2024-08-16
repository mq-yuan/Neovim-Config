function ColorMyPencils(color)
    color = color or "tokyonight" --rose-pine"

    if (color == 'tokyonight-night') then
        require("tokyonight").setup({
            style = "night",
            transparent = true,
            styles = {
                sidebars = "transparent",
                floats = "transparent",
            },
        })
    end
    vim.cmd.colorscheme(color)
end

return {
    'folke/tokyonight.nvim',
    name = 'tokyonight',
    config = function()
        ColorMyPencils('tokyonight-night')
    end
}
