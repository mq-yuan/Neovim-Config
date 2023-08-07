vim.opt.termguicolors = true
local bufferline = require("bufferline")
bufferline.setup {
    options = {
        mode = "buffers",
        diagnostics = "coc",
        style_preset = bufferline.style_preset.no_italic, -- {default, no_italic, no_bold, minimal}
        themable = true,
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
            local icon = level:match("error") and " " or " "
            return " " .. icon .. count
        end,
        indicator = {
            icon = '▎', -- this should be omitted if indicator style is not 'icon'
            -- style = 'icon' | 'underline' | 'none',
            style = "icon",
        },
        -- TODO: reset buf.path .. buf.name  <08/06, 2023, iLGZH> --
        name_formatter = function(buf) -- buf contains:
            -- return buf.path .. buf.name
        end,
        offsets = {
            {
                filetype = "NvimTree",
                text = function()
                    return vim.fn.getcwd()
                end,
                highlight = "Directory",
                text_align = "left"
            }
        },
        truncate_names = true,
        color_icons = true,
        show_buffer_close_icons = false,
        show_close_icon = false,
        enforce_regular_tabs = true,
        show_duplicate_prefix = false,
        tab_size = 16,
        padding = 0,
        -- separator_style = "thin",
        separator_style = { '', '' },
    }
}

-- buffer move
vim.keymap.set("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>")
vim.keymap.set("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>")
vim.keymap.set("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>")
vim.keymap.set("n", "<leader>4", ":BufferLineGoToBuffer 4<CR>")
vim.keymap.set("n", "<leader>5", ":BufferLineGoToBuffer 5<CR>")
vim.keymap.set("n", "<leader>6", ":BufferLineGoToBuffer 6<CR>")
vim.keymap.set("n", "<leader>7", ":BufferLineGoToBuffer 7<CR>")
vim.keymap.set("n", "<leader>8", ":BufferLineGoToBuffer 8<CR>")
vim.keymap.set("n", "<leader>9", ":BufferLineGoToBuffer 9<CR>")
vim.keymap.set("n", "<leader>0", ":BufferLinePick<CR>")
vim.keymap.set("n", "<leader>d", ":bd<CR>")
