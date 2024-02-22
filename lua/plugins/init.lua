return {
  {
    "RRethy/nvim-base16",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd [[colorscheme base16-irblack]]
    end,
  },
  { "nvim-lua/plenary.nvim" },
  { "Asheq/close-buffers.vim" },
  { "MunifTanjim/nui.nvim" },
  { "tpope/vim-surround" },
  { "folke/twilight.nvim" },
  { "onsails/lspkind.nvim" },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
  },
  {
    "nvim-telescope/telescope.nvim",
    requires = { { "nvim-lua/plenary.nvim" } },
  },
  {
    "stevearc/dressing.nvim",
    opts = {},
  },
  {
    "folke/which-key.nvim",
    lazy = false,
    module = true,
    cmd = "WhichKey",
    keys = "<leader>",
    config = function()
      require "plugins.config.which_key"
    end,
  },
  {
    "nvim-tree/nvim-web-devicons",
    config = function()
      require("nvim-web-devicons").setup()
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    requires = {
      "nvim-tree/nvim-web-devicons", -- optional, for file icons
    },
    lazy = false,
    tag = "nightly",
    config = function()
      require("nvim-tree").setup {
        sort_by = "case_sensitive",
      }
    end,
  },
  {
    "goolord/alpha-nvim",
    requires = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require "plugins.config.alpha"
    end,
  },
  {
    "max397574/better-escape.nvim",
    config = function()
      require("better_escape").setup {
        mapping = { "jk", "jj", "kj", "kk" },
        timeout = vim.o.timeoutlen,
        clear_empty_lines = true,
        keys = "<Esc>",
      }
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      return require "plugins.config.treesitter"
    end,
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    event = { "InsertEnter", "CmdlineEnter" },
    requires = "onsails/lspkind.nvim",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",     -- Snippet Completions
      "hrsh7th/cmp-nvim-lsp",         -- LSP Completions
      "hrsh7th/cmp-cmdline",          -- CommandLine Completions
      "L3MON4D3/LuaSnip",             -- Snippet Engine
      "rafamadriz/friendly-snippets", -- Bunch of Snippets
    },
    config = function()
      require "plugins.config.cmp"
    end,
  },
  {
    "willothy/nvim-cokeline",
    dependencies = {
      "nvim-lua/plenary.nvim",       -- Required for v0.4.0+
      "nvim-tree/nvim-web-devicons", -- If you want devicons
      "stevearc/resession.nvim",     -- Optional, for persistent history
    },
    config = function()
      require "plugins.config.cokeline"
    end,
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
    opts = function()
      return require "plugins.config.noice"
    end,
    config = function(_, opts)
      require("noice").setup(opts)
    end,
  },
  {
    "rcarriga/nvim-notify",
    opts = function()
      return require "plugins.config.notify"
    end,
    config = function(_, opts)
      require("notify").setup(opts)
    end,
  },
  {
    "williamboman/mason.nvim",
    cmd = {
      "Mason",
      "MasonInstall",
      "MasonUninstall",
      "MasonUninstallAll",
      "MasonLog",
    },
    opts = function()
      return require "plugins.config.mason"
    end,
    config = function(_, opts)
      require("mason").setup(opts)
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    requires = "williamboman/mason.nvim",
    dependencies = { "neovim/nvim-lspconfig" },
    config = function()
      require "plugins.config.mason_lspconfig"
    end,
  },
  {
    "nvimtools/none-ls.nvim",
    event = { "BufReadPost", "BufNewFile" },
  },
  {
    "NvChad/nvim-colorizer.lua",
    opts = function()
      return require "plugins.config.colorizer"
    end,
    config = function(_, opts)
      require("colorizer").setup(opts)
    end,
  },
  {
    "yamatsum/nvim-cursorline",
    opts = function()
      return require "plugins.config.cursorline"
    end,
    config = function(_, opts)
      require("nvim-cursorline").setup(opts)
    end,
  },
  {
    "m-demare/hlargs.nvim",
    requires = { "nvim-treesitter/nvim-treesitter" },
    opts = function()
      return require "plugins.config.hlargs"
    end,
    config = function(_, opts)
      require("hlargs").setup(opts)
    end,
  },
  {
    "kevinhwang91/nvim-hlslens",
    opts = function()
      return require "plugins.config.hlslens"
    end,
    config = function(_, opts)
      require("hlslens").setup(opts)
    end,
  },
  {
    "numToStr/Comment.nvim",
    opts = function()
      return require "plugins.config.comment"
    end,
    config = function(_, opts)
      require("Comment").setup(opts)
    end,
  },
  {
    "glepnir/lspsaga.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "nvim-treesitter/nvim-treesitter",
    },
    event = "BufRead",
    opts = function()
      return require "plugins.config.saga"
    end,
    config = function(_, opts)
      require("lspsaga").setup(opts)
    end,
  },
  {
    "sontungexpt/sttusline",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    event = { "BufEnter" },
    config = function()
      require "plugins.config.sttusline"
    end,
  },
  {
    "karb94/neoscroll.nvim",
    config = function()
      require("neoscroll").setup {}
    end,
  },
}
