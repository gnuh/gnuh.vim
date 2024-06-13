return {
  "pwntester/octo.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  opts = function()
    return require("plugins.config.octo")
  end,
  config = function(_, opts)
    require("octo").setup(opts)
  end,
}
