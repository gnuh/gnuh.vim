return {
  "David-Kunz/gen.nvim",
  opts = function()
    return require("plugins.config.gen")
  end,
  config = function(_, opts)
    require("gen").setup(opts)
  end,
}
