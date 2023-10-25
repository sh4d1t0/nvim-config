local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({
      'git',
      'clone',
      '--depth',
      '1',
      'https://github.com/wbthomason/packer.nvim',
      install_path
    })
    vim.cmd [[packadd packer.vim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Routes of configs files
  local function conf(name)
    return require(string.format('modules.config.%s', name))
  end

  -- My plugins here
  -- Themes
  use {
    {'marko-cerovac/material.nvim'},
    {'EdenEast/nightfox.nvim'},
    {'rebelot/kanagawa.nvim'},
    {'folke/tokyonight.nvim'},
    config = conf('colors')
  }

  -- Treesiter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      require('nvim-treesitter.install').update({ with_sync = true })
    end,
    config = conf('nvim-treesitter'),
    requires = {
      {'nvim-treesitter/playground'},
      {'nvim-treesitter/nvim-treesitter-textobjects'},
      {'nvim-treesitter/nvim-treesitter-refactor'},
      {'p00f/nvim-ts-rainbow'},
      {'windwp/nvim-ts-autotag'},
      {'JoosepAlviste/nvim-ts-context-commentstring'}
    }
  }

  -- Finder
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.2',
    config = conf('telescope'),
    requires = {
      {'nvim-lua/plenary.nvim'},
      {'nvim-telescope/telescope-file-browser.nvim'}
    }
  }

  -- File explorer
  use {
    'nvim-tree/nvim-tree.lua',
    config = conf('nvim-tree')
  }

  -- Icons
  use {
     'nvim-tree/nvim-web-devicons',
    config = conf('nvim-web-devicons')
  }

  -- colorizer
  use {
    'norcalli/nvim-colorizer.lua',
    config = conf('colorizer')
  }

  -- Statusline
  use {
    'nvim-lualine/lualine.nvim',
    config = conf('lualine')
  }

  -- Bufferline Tabs
  use {
    'akinsho/bufferline.nvim',
    tag = '*',
    requires = {'nvim-tree/nvim-web-devicons'},
    config = conf('bufferline')
  }

  --Indent Blankline
  use {
    'lukas-reineke/indent-blankline.nvim',
    config = conf('indent-blankline')
  }

  -- Notifications
  use 'rcarriga/nvim-notify'

  -- Lsp Stuff
  use {
    'williamboman/mason.nvim',
    config = conf('mason'),
    requires = {'williamboman/mason-lspconfig.nvim'}
  }

  -- Lsp
  use {
    'neovim/nvim-lspconfig',
    config = conf('lsp'),
    requires = {
      {'b0o/schemastore.nvim'},
      {'ray-x/lsp_signature.nvim'},
      {'jose-elias-alvarez/nvim-lsp-ts-utils'},
      {'RRethy/vim-illuminate'},
      {'tami5/lspsaga.nvim'},
      {'folke/lsp-colors.nvim'}
    }
  }

  -- Format
  use {
    'jose-elias-alvarez/null-ls.nvim',
    config = conf('lsp/null-ls')
  }

  -- Prettier
  use {
    'MunifTanjim/prettier.nvim',
    config = conf('prettier')
  }

  --Trouble
  use 'folke/trouble.nvim'

  -- Autocompletion plugin
  use {
    'hrsh7th/nvim-cmp',
    config = conf('nvim-cmp'),
    requires = {
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-emoji'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},
      {'hrsh7th/cmp-path'},
      {'onsails/lspkind-nvim'},
      { -- Snippets
        'L3MON4D3/LuaSnip',
        requires = {
          {'saadparwaiz1/cmp_luasnip'},
          {'rafamadriz/friendly-snippets'}
        }
      }
    }
  }

  --Autopairs
  use {
    'windwp/nvim-autopairs',
    config = conf('nvim-autopairs')
  }

  -- GitSigns
  use {
    'lewis6991/gitsigns.nvim',
    config = conf('gitsigns')
  }

  -- Git
  use {
    'dinhhuy258/git.nvim',
    config = conf('nvim-git'),
  }

  -- Rest
  use {
    'rest-nvim/rest.nvim',
    config = conf('nvim-rest'),
    requires = {'nvim-lua/plenary.nvim'}
  }

  -- Alpha nvim
  use {
    'goolord/alpha-nvim',
    requires = {'nvim-tree/nvim-web-devicons'},
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.config)
    end
  }

  -- nvim-visual-multi
  use 'mg979/vim-visual-multi'

  -- barbecue
  use({
    "utilyre/barbecue.nvim",
    tag = "*",
    requires = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    after = "nvim-web-devicons", -- keep this if you're using NvChad
    config = function()
      require("barbecue").setup()
    end,
  })

  -- symbols-outline
  use {
    'simrat39/symbols-outline.nvim',
    config = conf('symbols-outline')
  }

  use {
    'folke/todo-comments.nvim',
    config = conf('todo-comments')
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
