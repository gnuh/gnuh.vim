local null_ls = require "null-ls"
require("mason").setup()
null_ls.setup {
  automatic_setup = true,
  automatic_installation = true,
}
require("mason-null-ls").setup {
  ensure_installed = { "http", "json" },
  automatic_installation = true,
  automatic_setup = true,
  handlers = {
    function(source_name, methods)
      require "mason-null-ls.automatic_setup"(source_name, methods)
    end,
  },
}
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  signs = {
    severity_limit = "Hint",
  },
  virtual_text = {
    severity_limit = "Warning",
  },
})
