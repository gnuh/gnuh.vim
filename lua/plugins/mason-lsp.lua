return {
  {
    "williamboman/mason.nvim",
    cmd = {
      "Mason",
      "MasonInstall",
      "MasonUninstall",
      "MasonUninstallAll",
      "MasonLog",
    },
    config = function()
      require("mason").setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
          }
        }
      })
    end
  },
  { 
    "williamboman/mason-lspconfig.nvim",
    config = function()
      local mason_lspconfig = require "mason-lspconfig"
      local lspconfig = require "lspconfig"

      require("lspconfig.ui.windows").default_options.border = "rounded"

      mason_lspconfig.setup {
        ensure_installed = {},
      }

      mason_lspconfig.setup_handlers {
        function(server_name)
          if server_name ~= "jdtls" then
            local opts = {
              on_attach = function(client, bufnr)
                return require("plugins.config.lsp.handlers").on_attach
              end,
              capabilities = require("plugins.config.lsp.handlers").capabilities,
            }

            local require_ok, server = pcall(require, "plugins.lsp.settings." .. server_name)
            if require_ok then
              opts = vim.tbl_deep_extend("force", server, opts)
            end

            lspconfig[server_name].setup(opts)
          end
        end,
      }
    end,
  },
  { "neovim/nvim-lspconfig" },
}
