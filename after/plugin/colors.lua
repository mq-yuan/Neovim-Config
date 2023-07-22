function ColorMyPencils(color)
    color = color or "rose-pine"
    vim.cmd [[ set background=dark ]]
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils('tokyonight-night')
