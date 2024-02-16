return {
  "nvim-treesitter/nvim-treesitter-context",
  opts = function()
    return require("plugins.config.ts_context")
  end,
  config = function()
    require("treesitter-context").setup() 
  end,
}
