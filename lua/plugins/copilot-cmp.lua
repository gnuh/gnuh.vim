return {
  "zbirenbaum/copilot-cmp",
  event = "InsertEnter",
  config = function() require("copilot_cmp").setup() end,
  dependencies = {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    opts = function()
      return require("plugins.config.copilot-cmp")
    end,
    config = function(_, opts)
      require("copilot_cmp").setup(opts)
    end,
  },
}
