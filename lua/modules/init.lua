local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
end

local packer = require("packer")

return packer.startup(function(use)
  use("wbthomason/packer.nvim")

  local function conf(name)
    return require(string.format("modules.config.%s", name))
  end

  use({ -- Themes
    "marko-cerovac/material.nvim",
    "EdenEast/nightfox.nvim",
    "rebelot/kanagawa.nvim",
    "folke/tokyonight.nvim",
    config = conf("colors"),
  })
  use({ -- Treesiter
    "nvim-treesitter/nvim-treesitter",
    run = function()
      require("nvim-treesitter.install").update({ with_sync = true })
    end,
    config = conf("nvim-treesitter"),
    requires = {
      "nvim-treesitter/playground",
      "nvim-treesitter/nvim-treesitter-textobjects",
      "nvim-treesitter/nvim-treesitter-refactor",
      "p00f/nvim-ts-rainbow",
      "windwp/nvim-ts-autotag",
      "JoosepAlviste/nvim-ts-context-commentstring",
    },
  })
  use({ -- Finder
    "nvim-telescope/telescope.nvim",
    config = conf("telescope"),
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-file-browser.nvim",
    },
  })
  use({ -- File explorer
    "kyazdani42/nvim-tree.lua",
    config = conf("nvim-tree"),
  })
  use({ -- Icons
    "kyazdani42/nvim-web-devicons",
    config = conf("nvim-web-devicons"),
  })
  use({ -- colorizer
    "norcalli/nvim-colorizer.lua",
    config = conf("colorizer"),
  })
  use({ -- Statusline
    "nvim-lualine/lualine.nvim",
    config = conf("lualine"),
  })
  use({ -- Bufferline Tabs
    "akinsho/bufferline.nvim",
    tag = "v2.*",
    config = conf("bufferline"),
  })
  use({ -- Indent Blankline
    "lukas-reineke/indent-blankline.nvim",
    config = conf("indent-blankline"),
  })
  use({ -- Notifications
    "rcarriga/nvim-notify",
  })
  use({ -- Lsp Stuff
    "williamboman/mason.nvim",
    config = conf("mason"),
  })
  use({ -- mason and lspconfig bridge
    "williamboman/mason-lspconfig.nvim",
    config = conf("lsp/mason-lspconfig"),
  })
  use({ -- Lsp
    "neovim/nvim-lspconfig",
    config = conf("lsp"),
    requires = {
      "b0o/schemastore.nvim", -- JSON schema for jsonls
      "ray-x/lsp_signature.nvim",
      "jose-elias-alvarez/nvim-lsp-ts-utils",
      "RRethy/vim-illuminate",
      "tami5/lspsaga.nvim",
      "folke/lsp-colors.nvim",
    },
  })
  use({
    "jose-elias-alvarez/null-ls.nvim", -- Format
    config = conf("lsp/null-ls"),
  })
  use({ -- Prettier
    "MunifTanjim/prettier.nvim",
    config = conf("prettier"),
  })
  use({ -- Trouble
    "folke/trouble.nvim",
  })
  use({ -- Autocompletion plugin
    "hrsh7th/nvim-cmp",
    config = conf("nvim-cmp"),
    requires = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-emoji",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-nvim-lua",
      "hrsh7th/cmp-path",
      "onsails/lspkind-nvim", -- Enables icons on completions
      { -- Snippets
        "L3MON4D3/LuaSnip",
        requires = {
          "saadparwaiz1/cmp_luasnip",
          "rafamadriz/friendly-snippets",
        },
      },
    },
  })
  use({ -- Autopais
    "windwp/nvim-autopairs",
    config = conf("nvim-autopairs"),
  })
  use({ -- GitSigns
    "lewis6991/gitsigns.nvim",
    config = conf("gitsigns"),
  })
  use({ -- Git
    'dinhhuy258/git.nvim',
    config = conf("nvim-git"),
  })
  if packer_bootstrap then
    packer.sync()
  end
end)
