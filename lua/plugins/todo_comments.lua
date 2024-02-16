return {
  "folke/todo-comments.nvim",
  requires = "nvim-lua/plenary.nvim",
  opts = function()
    return require("plugins.config.todo_comments")
  end,
  config = function(_, opts)
    require("todo-comments").setup(opts)
  end,
}
