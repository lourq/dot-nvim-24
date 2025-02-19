vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
   use {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',

    requires = { {'nvim-lua/plenary.nvim'} }
   }

   -- Color schemes block
   use ('nikolvs/vim-sunbather')

   -- 
   use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
   use ('nvim-treesitter/playground')
   use ("nvim-treesitter/nvim-treesitter-context");
   use ('mbbill/undotree')
   use ('tpope/vim-fugitive')

   use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }
  use {
    'numToStr/Comment.nvim',
    config = function()
    end
  }
  use ('akinsho/bufferline.nvim')
  use ('windwp/nvim-autopairs')
  use ('norcalli/nvim-colorizer.lua')
  use ('lewis6991/gitsigns.nvim')
  use ('windwp/nvim-ts-autotag')
  use ('lukas-reineke/indent-blankline.nvim')
  use ('folke/todo-comments.nvim')

  use { "epwalsh/obsidian.nvim" }
  use { "nvim-tree/nvim-tree.lua" }

end)
