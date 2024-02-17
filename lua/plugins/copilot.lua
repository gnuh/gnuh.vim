return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  lazy = false,
  opts = function()
    return require("plugins.config.copilot")
  end,
  config = function(_, opts)
      require("copilot").setup(opts)
  end
}
