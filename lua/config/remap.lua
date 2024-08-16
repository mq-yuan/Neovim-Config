-- leader map
vim.g.mapleader = " "

-- cmd Ex
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- cmd Esc
vim.keymap.set("n", ";", ":")
vim.keymap.set("n", ":", ";")

-- move config
vim.keymap.set("n", "J", "5j")
vim.keymap.set("n", "K", "5k")

-- search config
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")
vim.keymap.set("n", "<leader><CR>", ":nohlsearch<CR>")

-- split config
vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.keymap.set("n", "<leader>l", "<C-w>l")
vim.keymap.set("n", "<up>", ":res+5<CR>")
vim.keymap.set("n", "<down>", ":res-5<CR>")
vim.keymap.set("n", "<left>", ":vertical res-5<CR>")
vim.keymap.set("n", "<right>", ":vertical res+5<CR>")

-- visual move
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- find * and #
-- vim.keymap.set("n", "<leader>ff", [[:/<C-r><C-w><CR>]])
-- vim.keymap.set("n", "<leader>FF", [[:?<C-r><C-w><CR>]])

-- lazygit
vim.keymap.set("n", "<leader>LG", function()
    -- vim.cmd("sp")
    -- vim.cmd("res+5")
    vim.cmd("term time lazygit")
end)

-- clipboard to system board
-- vim.keymap.set("n", "<leader>y", [["+y]])
vim.keymap.set("v", "<leader>y", [["+y]])
-- vim.keymap.set("n", "<leader>Y", [["+yg_]])
-- vim.keymap.set("v", "<leader>Y", [["+yg_]])
-- vim.keymap.set("n", "<leader>p", [["+p]])
-- vim.keymap.set("v", "<leader>p", [["+p]])
-- vim.keymap.set("n", "<leader>P", [["+P]])
-- vim.keymap.set("v", "<leader>P", [["+P]])


-------------
--- Plug ----
-------------

-- Tagbar
vim.keymap.set("n", "<F8>", vim.cmd.TagbarToggle)


-- copilot
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

-- undotree
vim.keymap.set("n", "<F5>", vim.cmd.UndotreeToggle)


-- fzf

-- FZF
vim.keymap.set("n", "<leader>pf", vim.cmd.Files)
vim.keymap.set("n", "<leader>pg", vim.cmd.Ag)

-- treesitter-context
vim.keymap.set("n", "[c", function()
    require("treesitter-context").go_to_context()
end, { silent = true })
