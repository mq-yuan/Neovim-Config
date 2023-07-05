local leap = require('leap')
-- vim.api.nvim_set_hl(0, 'LeapBackdrop', { fg = 'white', bold = true, nocombine = true, })
leap.opts.highlight_unlabeled_phase_one_targets = true
leap.opts.safe_lables = {}
vim.keymap.set("n", "<ESC>", function()
    local current_window = vim.fn.win_getid()
    leap.leap { target_windows = { current_window } }
end)
