-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
	
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
	}
  use({ 'rebelot/kanagawa.nvim',
  	as = 'kanagawa.nvim',
	config = function()
		vim.cmd("colorscheme kanagawa")
	end
	})
use( 'nvim-treesitter/nvim-treesitter', { run =  ':TSUpdate'})
use( 'nvim-treesitter/playground')
use( 'ThePrimeagen/harpoon')
use( 'mbbill/undotree')
use (  "neovim/nvim-lspconfig")
use ( "williamboman/mason.nvim" )
use ( "williamboman/mason-lspconfig.nvim" )
use ( "WhoIsSethDaniel/mason-tool-installer.nvim" )
use ( "hrsh7th/nvim-cmp" )
use ( "hrsh7th/cmp-nvim-lsp")
use ( "hrsh7th/cmp-path")
end)
