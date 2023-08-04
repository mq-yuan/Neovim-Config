-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Simple plugins can be specified as strings
    use 'rstacruz/vim-closer'

    -- Colorscheme
    -- use({ 'rose-pine/neovim', as = 'rose-pine' })
    use({ 'folke/tokyonight.nvim', as = 'tokyonight' })

    -- -- FileTree
    -- use('preservim/nerdtree')
    use('nvim-tree/nvim-tree.lua')

    -- icons
    use('nvim-tree/nvim-web-devicons')

    -- UndoTree
    use('mbbill/undotree')

    -- Vim Airline
    use('vim-airline/vim-airline')

    -- FZF
    use('junegunn/fzf')
    use('junegunn/fzf.vim')

    -- leap
    use('ggandor/leap.nvim')
    use('tpope/vim-repeat')

    -- comment
    use('tpope/vim-commentary')

    -- Tagbar
    use('preservim/tagbar')

    -- COC
    use { 'neoclide/coc.nvim', branch = 'release' }

    -- -- indent-blankline
    -- use('lukas-reineke/indent-blankline.nvim')

    -- hlchunk
    use { "shellRaining/hlchunk.nvim" }


    -- treesitter
    use('nvim-treesitter/nvim-treesitter')
    -- treesitter-context
    use('nvim-treesitter/nvim-treesitter-context')

    -- surround
    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    })


    --snippets
    use('honza/vim-snippets')
    -- fun
    use('Eandrju/cellular-automaton.nvim')
end)
