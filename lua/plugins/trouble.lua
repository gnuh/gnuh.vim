return {
  "folke/trouble.nvim",
  requires = "kyazdani42/nvim-web-devicons",
  opts = function()
    return require("plugins.config.trouble")
  end,
  config = function(_, opts)
    require("trouble").setup(opts)
  end,
}
