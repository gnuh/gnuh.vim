return {
  "simrat39/rust-tools.nvim",
  opts = function()
    return require("plugins.config.rust_tools")
  end,
  config = function(_, opts)
    require("rust-tools").setup(opts)
  end,
}
