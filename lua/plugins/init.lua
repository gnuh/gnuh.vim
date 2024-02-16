return {
  {
    "RRethy/nvim-base16",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd [[colorscheme base16-irblack]]
    end,
  },
  {
	"folke/which-key.nvim",
	lazy = false,
	module = true,
	cmd = "WhichKey",
	keys = "<leader>",
	config = function()
		require("plugins.config.which_key")
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
      require("plugins.config.alpha")
    end,
  },
}
