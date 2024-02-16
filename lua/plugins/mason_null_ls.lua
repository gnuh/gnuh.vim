return {
  "jay-babu/mason-null-ls.nvim",
  requires = "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "nvimtools/none-ls.nvim",
  },
  config = function()
   require("plugins.config.mason_null_ls") 
  end,
}
