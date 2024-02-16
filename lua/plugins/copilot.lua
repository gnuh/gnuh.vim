return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  opts = function()
    return require("plugins.config.copilot")
  end,
  config = function(_, opts)
      require("copilot").setup(opts)
  end
}
