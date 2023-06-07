-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- Simple plugins can be specified as strings
  use 'rstacruz/vim-closer'

  -- Colorscheme
  use({ 'rose-pine/neovim', as = 'rose-pine' })
  -- vim.cmd('colorscheme rose-pine')

  -- FileTree
  use( 'preservim/nerdtree')

  -- UndoTree
  use( 'mbbill/undotree')

  -- Vim Airline
  use( 'vim-airline/vim-airline')

  -- FZF
  use( 'junegunn/fzf')
  use( 'junegunn/fzf.vim')

  -- leap
  use( 'ggandor/leap.nvim')
  use( 'tpope/vim-repeat')

  -- comment
  use( 'tpope/vim-commentary')

  -- Tagbar
  use( 'preservim/tagbar')
end)
