return {
  "folke/trouble.nvim",
  requires = "nvim-tree/nvim-web-devicons",
  opts = function()
    return require("plugins.config.trouble")
  end,
  config = function(_, opts)
    require("trouble").setup(opts)
  end,
}
