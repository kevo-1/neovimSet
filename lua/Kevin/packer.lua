-- Only required if you have packer configured as opt
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
	
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
	}
    use {'nvim-telescope/telescope-ui-select.nvim' }
  use({ 'rebelot/kanagawa.nvim',
  	as = 'kanagawa.nvim',
	config = function()
		vim.cmd("colorscheme kanagawa")
	end
	})
use {
        'mfussenegger/nvim-dap',
        config = function()
            local dap = require('dap')
            dap.adapters.python = {
                type = 'executable',
                command = 'C:/msys64/ucrt64/bin/python.exe', -- Adjust this to your Python path
                args = { '-m', 'debugpy.adapter' },
            }
            dap.configurations.python = {
                {
                    type = 'python',
                    request = 'launch',
                    name = 'Launch file',
                    program = "${file}",
                    pythonPath = function()
                        return 'C:/msys64/ucrt64/bin/python.exe'
                    end,
                },
            }
        end
    }

    use {
        'rcarriga/nvim-dap-ui',
        requires = {
            'mfussenegger/nvim-dap',
            'nvim-neotest/nvim-nio'  -- Add this line to include nvim-nio
        },
        config = function()
            require("dapui").setup()
        end
    }
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
