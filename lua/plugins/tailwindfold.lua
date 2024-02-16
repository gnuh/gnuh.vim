return {
  "razak17/tailwind-fold.nvim",
    opts = {},
    dependencies = {"nvim-treesitter/nvim-treesitter"},
    ft = {"html", "svelte", "astro", "vue", "typescriptreact"},
    config = function()
      require("tailwind-fold").setup {
        min_chars = 70
      }
    end
}
