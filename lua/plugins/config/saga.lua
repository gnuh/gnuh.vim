local options = {
  code_action = {
    num_shortcut = true,
    show_server_name = true,
    extend_gitsigns = true,
    keys = {
      quit = "q",
      exec = "<CR>",
    },
  },
  diagnostic = {
    show_code_action = true,
    show_source = true,
    jump_num_shortcut = true,
    max_width = 0.7,
    custom_fix = nil,
    custom_msg = nil,
    text_hl_follow = true,
    border_follow = true,
    keys = {
      exec_action = "o",
      quit = "q",
      go_action = "g",
    },
  },
}
return options
