return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-lua/plenary.nvim",
    { "MeanderingProgrammer/render-markdown.nvim", ft = { "markdown", "codecompanion" } },
  },
  config = function()
    local status_ok, codecompanion = pcall(require, "codecompanion")
    if not status_ok then
      vim.notify("Failed to load codecompanion", vim.log.levels.ERROR)
      return
    end

    codecompanion.setup({
      strategies = {
        chat = {
          adapter = "copilot",
          options = {
            -- Add any specific options for the chat strategy here
          },
        },
        inline = {
          adapter = "copilot",
          options = {
            -- Add any specific options for the inline strategy here
          },
        },
      },
    })
  end,
}
