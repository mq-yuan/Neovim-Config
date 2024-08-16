local function modifyFilePath()
    local relativepath = vim.fn.fnamemodify(vim.fn.bufname('%'), ':~:.')
    local modifiedpath = string.gsub(relativepath, '(%w)[^/]*/', '%1/')

    return modifiedpath
end
return {
    'nvim-lualine/lualine.nvim',
    event = "VeryLazy",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('lualine').setup {
            options = {
                icons_enabled = true,
                theme = 'auto',
                -- component_separators = { left = '', right = '' },
                -- section_separators = { left = '', right = '' },
                section_separators = { left = '', right = '' },
                component_separators = { left = '', right = '' },
                disabled_filetypes = {
                    statusline = {},
                    winbar = {},
                },
                ignore_focus = {},
                always_divide_middle = true,
                globalstatus = true,
                refresh = {
                    statusline = 1000,
                    tabline = 1000,
                    winbar = 1000,
                }
            },
            -- sections = {
            --     lualine_a = { 'mode' },
            --     lualine_b = { 'branch', 'diff', 'diagnostics' },
            --     lualine_c = { 'filename' },
            --     lualine_x = { 'encoding', 'fileformat', 'filetype' },
            --     lualine_y = { 'progress' },
            --     lualine_z = { 'location' }
            -- },
            sections = {
                -- lualine_a = { modifyFilePath },
                lualine_a = { 'filename' },
                lualine_b = { 'branch', 'diff', 'diagnostics' },
                lualine_c = {},
                lualine_x = {},
                lualine_y = { 'filesize', 'fileformat', 'filetype' },
                lualine_z = { 'location' }
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = { 'filename' },
                lualine_x = { 'location' },
                lualine_y = {},
                lualine_z = {}
            },
            tabline = {},
            winbar = {},
            inactive_winbar = {},
            extensions = {}
        }
    end
}
