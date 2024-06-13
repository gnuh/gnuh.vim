return {
  "hrsh7th/nvim-cmp",
  event = { "InsertEnter", "CmdlineEnter" },
  requires = "onsails/lspkind.nvim",
  dependencies = {
    "saadparwaiz1/cmp_luasnip",       -- Snippet Completions
    "hrsh7th/cmp-nvim-lsp",           -- LSP Completions
    "hrsh7th/cmp-cmdline",            -- CommandLine Completions
    "L3MON4D3/LuaSnip",               -- Snippet Engine
    "rafamadriz/friendly-snippets",   -- Bunch of Snippets
  },
  config = function()
    require "plugins.config.cmp"
  end,
}
