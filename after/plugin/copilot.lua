vim.g.copilot_enabled = false
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap('n', '<leader>go', '<CMD>Copilot<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>ge', '<CMD>Copilot enable<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>gd', '<CMD> Copilot disable<CR>', { silent = true })
-- vim.api.nvim_set_keymap('i', '<c-p>', '<Plug>(copilot-suggest)', {})
-- vim.api.nvim_set_keymap('i', '<c-n>', '<Plug>(copilot-next)', { silent = true })
-- vim.api.nvim_set_keymap('i', '<c-l>', '<Plug>(copilot-previous)', { silent = true })
vim.cmd('imap <silent><script><expr> <C-C> copilot#Accept("")')
vim.cmd([[
			let g:copilot_filetypes = {
            \ 'TelescopePrompt': v:false,
            \ }
			]])
