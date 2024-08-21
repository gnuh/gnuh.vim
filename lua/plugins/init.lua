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
    requires = { "nvim-lua/plenary.nvim" },
  },
  { "stevearc/dressing.nvim" },
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
    "folke/which-key.nvim",
    opts = {
      icons = {
        rules = {
          { plugin = "copilot.lua", icon = " ", color = "orange" },
        },
      },
    },
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
      "nvim-tree/nvim-web-devicons",
    },
    lazy = false,
    config = function()
      require("nvim-tree").setup({
        sort = {
          sorter = "case_sensitive",
        },
        view = {
          width = 30,
        },
        renderer = {
          group_empty = true,
        },
        filters = {
          dotfiles = true,
        },
      })
    end,
  },
  {
    "willothy/nvim-cokeline",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require "plugins.config.cokeline"
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
    "rcarriga/nvim-notify",
    opts = function()
      return require "plugins.config.notify"
    end,
    config = function(_, opts)
      require("notify").setup(opts)
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
    "NvChad/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup {}
    end,
  },
  {
    "m-demare/hlargs.nvim",
    config = function()
      require("hlargs").setup {}
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
  { 'akinsho/git-conflict.nvim', version = "*", config = true }
}
