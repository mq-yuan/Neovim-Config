function ColorMyPencils(color)
    color = color or "rose-pine"
    vim.cmd [[ set background=dark ]]
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

    if (color == 'tokyonight-night') then
        require("tokyonight").setup({
            transparent = true,
            styles = {
                sidebars = "transparent",
                floats = "transparent",
            },
        })
    end
end

ColorMyPencils('tokyonight-night')
