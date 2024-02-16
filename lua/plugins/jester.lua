return {
  "David-Kunz/jester",
  opts = function()
    return require("plugins.config.jester")
  end,
  config = function(_, opts)
    require("jester").setup(opts) 
  end,
}
