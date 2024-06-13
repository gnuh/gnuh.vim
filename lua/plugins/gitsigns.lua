return {
  "lewis6991/gitsigns.nvim",
  opts = function()
    return require("plugins.config.gitsigns")
  end,
  config = function(_, opts)
    require('gitsigns').setup(opts)
  end
}
