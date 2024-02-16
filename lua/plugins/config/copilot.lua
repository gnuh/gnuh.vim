local options = {
  panel = {
    enabled = true,
    auto_refresh = true,
    keymap = {
        jump_prev = "[[",
        jump_next = "]]",
        accept = "<C-j>",
        refresh = "gr",
        open = "<M-CR>"
    },
    layout = {
        position = "bottom", -- | top | left | right
        ratio = 0.4
    }
  },
  suggestion = {
      enabled = true,
      auto_trigger = false,
      debounce = 75,
      keymap = {
          accept = "<C-j>",
          accept_word = false,
          accept_line = false,
          next = "<C-]>",
          prev = "<C-[>",
          dismiss = "<M-]>"
      }
  },
  filetypes = {
      ["*"] = true
  },
  copilot_node_command = "node", -- Node.js version must be > 16.x
  server_opts_overrides = {}
}
