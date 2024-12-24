return {
  "akinsho/git-conflict.nvim",
  tag = "v2.1.0",
  config = function()
    require("git-conflict").setup({
      default_mappings = {
        ours = "o",
        theirs = "t",
        none = "0",
        both = "b",
        next = "n",
        prev = "p",
      },
    })
  end,
}
